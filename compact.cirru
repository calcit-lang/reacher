
{} (:package |reacher)
  :configs $ {} (:init-fn |reacher.app.main/main!) (:reload-fn |reacher.app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo-ui.calcit/
  :entries $ {}
  :files $ {}
    |reacher.app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defn comp-container (props ? children)
            let
                store $ .-store props
                *draft $ use-atom "\""
                d! $ use-dispatch
                tasks $ :tasks store
              div
                {} $ :style
                  merge ui/global ui/column $ {} (:padding 16)
                div
                  {} $ :style ui/row
                  input $ {}
                    :value $ .get *draft
                    :placeholder "\"Content"
                    :style $ merge ui/input
                    :on-change $ fn (event)
                      .set! *draft $ -> event .-target .-value
                  =< 8 nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (event)
                        d! :add-task $ .get *draft
                        .set! *draft "\""
                    , "\"Run"
                =< 8 nil
                div ({}) & $ -> tasks
                  map $ fn (task)
                    wrap-comp memod-comp-task $ &js-object :task task :id (:id task)
        |comp-task $ quote
          defn comp-task (? props children)
            use-effect!
              [] $ js/Math.random
              fn () $ println "\"effect"
            js/console.log "\"task" props
            let
                task $ .-task props
                d! $ use-dispatch
              div
                {} $ :style
                  merge ui/row-middle $ {} (:margin "\"4px")
                div $ {}
                  :style $ {}
                    :background-color $ if (:done? task) (hsl 0 0 80) :red
                    :width 24
                    :height 24
                  :on-click $ fn (e)
                    d! :toggle-task $ :id task
                =< 8 nil
                div
                  {} $ :style
                    {} $ :min-width 200
                  :text task
                =< 8 nil
                div
                  {} $ :on-click
                    fn (e)
                      d! :rm-task $ :id task
                  , "\"rm"
        |memod-comp-task $ quote
          def memod-comp-task $ re-memo comp-task
      :ns $ quote
        ns reacher.app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          reacher.app.config :refer $ dev?
          reacher.core :refer $ defcomp div =< textarea span input button use-atom use-dispatch use-effect! re-memo wrap-comp
          "\"react" :as React
    |reacher.app.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
      :ns $ quote (ns reacher.app.config)
    |reacher.app.main $ {}
      :defs $ {}
        |*store $ quote
          defatom *store $ {}
            :tasks $ []
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *store $ updater @*store op op-data (js/Date.now) (js/Date.now)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *store :changes $ fn (s prev) (render-app!)
            .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            ; repeat! 60 persist-storage!
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |mount-target $ quote
          def mount-target $ createRoot (js/document.querySelector |.app)
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site) (format-cirru-edn @*store)
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *store :changes)
              add-watch *store :changes $ fn (s prev) (render-app!)
              render-app!
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ .!render mount-target
            wrap-comp dispatch-provider
              js-object $ "\"value" dispatch!
              wrap-comp comp-container $ js-object (:store @*store)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
      :ns $ quote
        ns reacher.app.main $ :require
          reacher.app.comp.container :refer $ comp-container
          reacher.app.updater :refer $ updater
          reacher.app.schema :as schema
          reacher.app.config :as config
          reacher.core :refer $ render! wrap-comp dispatch-provider
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          "\"react-dom/client" :refer $ createRoot
    |reacher.app.schema $ {}
      :defs $ {}
      :ns $ quote (ns reacher.app.schema)
    |reacher.app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :add-task $ update store :tasks
                fn (tasks)
                  conj tasks $ {} (:id op-id) (:time op-time) (:done? false) (:text data)
              :rm-task $ update store :tasks
                fn (tasks)
                  -> tasks $ filter
                    fn (t)
                      not= data $ :id t
              :toggle-task $ update store :tasks
                fn (tasks)
                  -> tasks $ map
                    fn (task)
                      if
                        = data $ :id task
                        update task :done? not
                        , task
              :hydrate-storage data
      :ns $ quote
        ns reacher.app.updater $ :require
    |reacher.core $ {}
      :defs $ {}
        |%state-ref $ quote
          defrecord! %state-ref
            :get $ fn (xs)
              -> xs (nth 1) (nth 0)
            :set! $ fn (xs v)
                -> xs (nth 1) (nth 1)
                , v
        |=< $ quote
          defn =< (w h)
            if (number? w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"width" w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"height" h)
        |a $ quote
          defn a (props & children) (create-element "\"a" props children)
        |button $ quote
          defn button (props & children) (create-element "\"button" props children)
        |canvas $ quote
          defn canvas (props & children) (create-element "\"div" props children)
        |context-of-dispatch $ quote
          def context-of-dispatch $ React/createContext
            fn (op data) (js/console.warn "\"missing dispatch function" op)
        |create-element $ quote
          defn create-element (tag props children)
            React/createElement (turn-string tag) (transform-props props) & children
        |dispatch-provider $ quote
          def dispatch-provider $ .-Provider context-of-dispatch
        |div $ quote
          defn div (props & children) (create-element "\"div" props children)
        |img $ quote
          defn img (props & children) (create-element "\"img" props children)
        |input $ quote
          defn input (props & children) (create-element "\"input" props children)
        |map-strip-keyword $ quote
          defn map-strip-keyword (xs)
            map xs $ fn (x)
              if (keyword? x) (turn-string x) x
        |pre $ quote
          defn pre (props & children) (create-element "\"pre" props children)
        |props-equal $ quote
          defn props-equal (prev next)
            let
                p-fields $ js/Object.keys prev
                n-fields $ js/Object.keys next
              if
                = (.-length p-fields) (.-length n-fields)
                .!every p-fields $ fn (k idx ? p)
                  and (.includes n-fields k)
                    = (aget prev k) (aget next k)
                , false
        |re-memo $ quote
          defn re-memo (c) (React/memo c props-equal)
        |render! $ quote
          defn render! (target el) (ReactDOM/render el target)
        |span $ quote
          defn span (props & children) (create-element "\"span" props children)
        |tag* $ quote
          defn tag* (name props & children)
            create-element (turn-string name) props children
        |textarea $ quote
          defn textarea (props & children) (create-element "\"textarea" props children)
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
        |use-atom $ quote
          defn use-atom (v)
            let
                xs $ React/useState v
                s $ aget xs 0
                s! $ aget xs 1
              :: %state-ref $ [] s s!
        |use-dispatch $ quote
          defn use-dispatch () $ React/useContext context-of-dispatch
        |use-effect! $ quote
          defn use-effect! (params f)
            let
                r* $ React/useRef params
              if
                not= params $ .-current r*
                do $ set! (.-current r*) params
              React/useEffect f $ js-array & (.-current r*)
        |wrap-comp $ quote
          defn wrap-comp (f props & children) (React/createElement f props & children)
      :ns $ quote
        ns reacher.core $ :require ("\"react" :as React) ("\"react-dom" :as ReactDOM)
          reacher.util.str :refer $ get-style-value dashed->camel
    |reacher.util.str $ {}
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
        |get-style-value $ quote
          defn get-style-value (x prop)
            cond
                string? x
                , x
              (keyword? x) (turn-string x)
              (number? x)
                if (.!test pattern-non-dimension-props prop) (str x) (str x "\"px")
              true $ str x
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
      :ns $ quote (ns reacher.util.str)
