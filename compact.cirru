
{} (:package |reacher)
  :configs $ {} (:init-fn |reacher.app.main/main!) (:reload-fn |reacher.app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/
    :version |0.0.1
  :files $ {}
    |reacher.app.updater $ {}
      :ns $ quote
        ns reacher.app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :hydrate-storage data
              op store
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
    |reacher.app.main $ {}
      :ns $ quote
        ns reacher.app.main $ :require
          reacher.app.comp.container :refer $ comp-container
          reacher.app.updater :refer $ updater
          reacher.app.schema :as schema
          reacher.app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          "\"react-dom" :as ReactDOM
          "\"react" :as React
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ ReactDOM/render (React/createElement comp-container @*store) mount-target
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site) (format-cirru-edn @*store)
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
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
          reacher.app.config :refer $ dev?
          reacher.core :refer $ defcomp div =< textarea span input button
          "\"react" :as React
      :defs $ {}
        |comp-container $ quote
          defn comp-container (? props children)
            let
                a $ React/useState "\""
                draft $ aget a 0
                set-draft! $ aget a 1
              div
                {} $ :style (merge ui/global ui/row)
                textarea $ {} (:value draft) (:placeholder "\"Content")
                  :style $ merge ui/expand ui/textarea
                    {} $ :height 320
                  :on-input $ fn (event)
                    set-draft! $ -> event .-target .-value
                =< 8 nil
                div
                  {} $ :style ui/expand
                  =< |8px nil
                  button
                    {} (:style ui/button)
                      :on-click $ fn (event) (println draft)
                    , "\"Run"
    |reacher.core $ {}
      :ns $ quote
        ns reacher.core $ :require ("\"react" :as React)
      :defs $ {}
        |map-strip-keyword $ quote
          defn map-strip-keyword (xs)
            map xs $ fn (x)
              if (keyword? x) (turn-string x) x
        |div $ quote
          defn div (props & children) (create-element "\"div" props children)
        |span $ quote
          defn span (props & children) (create-element "\"span" props children)
        |create-element $ quote
          defn create-element (tag props children)
            React/createElement (turn-string tag) (transform-props props) & children
        |textarea $ quote
          defn textarea (props & children) (create-element "\"textarea" props children)
        |input $ quote
          defn input (props & children) (create-element "\"input" props children)
        |=< $ quote
          defn =< (w h)
            if (number? w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"width" w)
              React/createElement "\"div" $ js-object
                "\"style" $ js-object ("\"height" h)
        |dashed->camel $ quote
          defn dashed->camel (x)
            .!replace x dashed-letter-pattern $ fn (cc pos prop)
              .!toUpperCase $ aget cc 1
        |transform-props $ quote
          defn transform-props (props)
            if (nil? props) (&js-object)
              -> props
                map-kv $ fn (k v)
                  if (= :style k)
                    [] "\"style" $ transform-props (:style props)
                    []
                      dashed->camel $ turn-string k
                      cond
                          fn? v
                          , v
                        true $ turn-string v
                to-js-data
        |dashed-letter-pattern $ quote
          def dashed-letter-pattern $ new js/RegExp "\"-[a-z]" "\"g"
        |button $ quote
          defn button (props & children) (create-element "\"button" props children)
