
{} (:package |reacher)
  :configs $ {} (:init-fn |reacher.app.main/main!) (:reload-fn |reacher.app.main/reload!)
    :modules $ [] |respo-ui.calcit/
    :version |0.0.1
  :files $ {}
    |reacher.app.updater $ {}
      :ns $ quote
        ns reacher.app.updater $ :require
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op store $ :hydrate-storage data
    |reacher.app.config $ {}
      :ns $ quote (ns reacher.app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
    |reacher.app.schema $ {}
      :ns $ quote (ns reacher.app.schema)
      :defs $ {}
    |reacher.util.str $ {}
      :ns $ quote (ns reacher.util.str)
      :defs $ {}
        |dashed->camel $ quote
          defn dashed->camel (x)
            .!replace x dashed-letter-pattern $ fn (cc pos prop)
              .!toUpperCase $ aget cc 1
        |dashed-letter-pattern $ quote
          def dashed-letter-pattern $ new js/RegExp "\"-[a-z]" "\"g"
        |escape-html $ quote
          defn escape-html (text)
            if (nil? text) "\"" $ -> text (.!replace "|\"" |&quot;) (.!replace |< |&lt;) (.!replace |> |&gt;) (.!replace &newline "\"&#13;&#10;")
        |pattern-non-dimension-props $ quote
          def pattern-non-dimension-props $ new js/RegExp "\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" "\"i"
        |style->string $ quote
          defn style->string (styles)
            -> styles (.to-list)
              map $ fn (entry)
                let
                    k $ first entry
                    style-name $ turn-string k
                    v $ w-log
                      get-style-value (last entry) (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              join-str |
        |get-style-value $ quote
          defn get-style-value (x prop)
            cond
                string? x
                , x
              (keyword? x) (turn-string x)
              (number? x)
                if (.!test pattern-non-dimension-props prop) (str x) (str x "\"px")
              true $ str x
    |reacher.app.main $ {}
      :ns $ quote
        ns reacher.app.main $ :require
          reacher.app.comp.container :refer $ comp-container
          reacher.app.updater :refer $ updater
          reacher.app.schema :as schema
          reacher.app.config :as config
          reacher.core :refer $ render! wrap-comp dispatch-provider
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target
            wrap-comp dispatch-provider
              js-object $ "\"value" dispatch!
              wrap-comp comp-container @*store
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site) (format-cirru-edn @*store)
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *store :changes $ fn (s prev) (render-app!)
            .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .!getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |*store $ quote
          defatom *store $ {}
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *store $ updater @*store op op-data nil nil
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *store :changes)
              add-watch *store :changes $ fn (s prev) (render-app!)
              render-app!
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |reacher.app.comp.container $ {}
      :ns $ quote
        ns reacher.app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          reacher.app.config :refer $ dev?
          reacher.core :refer $ defcomp div =< textarea span input button use-atom use-dispatch use-effect! re-memo wrap-comp
          "\"react" :as React
      :defs $ {}
        |comp-container $ quote
          defn comp-container (? props children)
            let
                *draft $ use-atom "\""
                d! $ use-dispatch
              use-effect! ([] 1)
                fn () $ println "\"effect"
              div
                {} $ :style (merge ui/global ui/row)
                textarea $ {}
                  :value $ .get *draft
                  :placeholder "\"Content"
                  :style $ merge ui/expand ui/textarea
                    {} $ :height 320
                  :on-change $ fn (event)
                    .set! *draft $ -> event .-target .-value
                =< 8 nil
                wrap-comp memod-comp-task $ js-object
                div
                  {} $ :style ui/expand
                  =< |8px nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (event)
                        println $ .get *draft
                        d! :demo :demo
                    , "\"Run"
        |comp-task $ quote
          defn comp-task (? task children)
            use-effect!
              [] $ js/Math.random
              fn () $ println "\"effect"
            div ({}) "\"TODO"
        |memod-comp-task $ quote
          def memod-comp-task $ re-memo comp-task
    |reacher.core $ {}
      :ns $ quote
        ns reacher.core $ :require ("\"react" :as React) ("\"react-dom" :as ReactDOM)
          reacher.util.str :refer $ get-style-value dashed->camel
      :defs $ {}
        |map-strip-keyword $ quote
          defn map-strip-keyword (xs)
            map xs $ fn (x)
              if (keyword? x) (turn-string x) x
        |div $ quote
          defn div (props & children) (create-element "\"div" props children)
        |span $ quote
          defn span (props & children) (create-element "\"span" props children)
        |props-equal $ quote
          defn props-equal (prev next)
            let
                p-fields $ js/Object.keys prev
                n-fields $ js/Object.keys next
              if
                = (.-length p-fields) (.-length n-fields)
                .!every p-fields $ fn (k)
                  and (.includes n-fields k)
                    = (aget prev k) (aget next k)
                , false
        |create-element $ quote
          defn create-element (tag props children)
            React/createElement (turn-string tag) (transform-props props) & children
        |textarea $ quote
          defn textarea (props & children) (create-element "\"textarea" props children)
        |input $ quote
          defn input (props & children) (create-element "\"input" props children)
        |use-atom $ quote
          defn use-atom (v)
            let
                xs $ React/useState v
                s $ aget xs 0
                s! $ aget xs 1
              :: %state-ref $ [] s s!
        |=< $ quote
          defn =< (w h)
            if (number? w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"width" w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"height" h)
        |wrap-comp $ quote
          defn wrap-comp (f props & children) (React/createElement f props & children)
        |use-effect! $ quote
          defn use-effect! (params f)
            let
                r* $ React/useRef params
              if
                not= params $ .-current r*
                do $ set! (.-current r*) params
              React/useEffect f $ js-array & (.-current r*)
        |context-of-dispatch $ quote
          def context-of-dispatch $ React/createContext
            fn (op data) (js/console.warn "\"missing dispatch function" op)
        |%state-ref $ quote
          defrecord! %state-ref
            :get $ fn (xs)
              -> xs (nth 1) (nth 0)
            :set! $ fn (xs v)
                -> xs (nth 1) (nth 1)
                , v
        |transform-props $ quote
          defn transform-props (props)
            if (nil? props) (&js-object)
              -> props
                map-kv $ fn (k v)
                  if (= :style k)
                    [] "\"style" $ let
                        s $ :style props
                      if (nil? s) "\"" $ -> s
                        map-kv $ fn (k v)
                          let
                              prop $ dashed->camel (turn-string k)
                            [] prop $ get-style-value v prop
                        to-js-data
                    []
                      dashed->camel $ turn-string k
                      cond
                          fn? v
                          , v
                        true $ turn-string v
                to-js-data
        |button $ quote
          defn button (props & children) (create-element "\"button" props children)
        |use-dispatch $ quote
          defn use-dispatch () $ React/useContext context-of-dispatch
        |re-memo $ quote
          defn re-memo (c) (React/memo c props-equal)
        |dispatch-provider $ quote
          def dispatch-provider $ .-Provider context-of-dispatch
        |render! $ quote
          defn render! (target el) (ReactDOM/render el target)
