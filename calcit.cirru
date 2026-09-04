
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |reacher)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'reacher.app.main/main!) (:mode :js) (:reload-fn 'reacher.app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo-ui.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'reacher.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-container (props ? children)
              let
                  store $ ffi/read-store-prop props
                  *draft $ use-atom |
                  d! $ use-dispatch
                  tasks $
                    get store :tasks
                    , .unwrap-or ([])
                div
                  {} $ :style
                    merge ui/global ui/column $ {} (:padding |16px)
                  div
                    {} $ :style ui/row
                    input $ {}
                      :value $ :value *draft
                      :placeholder |Content
                      :style $ merge ui/input
                      :on-change $ fn (event)
                        let
                            setter $ :setter *draft
                          setter $ ffi/read-input-value event
                    =< 8 0
                    button
                      {} (:style ui/button)
                        :on-click $ fn (event)
                          d! :add-task $ :value *draft
                          let
                              setter $ :setter *draft
                            setter |
                      , |Run
                  =< 8 0
                  div ({}) & $ -> tasks
                    map $ fn (task)
                      wrap-comp memod-comp-task $ &js-object :task task :id
                        (get task :id) .unwrap-or 0
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn comp-task (? props children)
              use-effect!
                [] $ browser/random
                fn () $ println |effect
              js/console.log |task props
              let
                  task $ ffi/read-task-prop props
                  d! $ use-dispatch
                div
                  {} $ :style
                    merge ui/row-middle $ {} (:margin :4px)
                  div $ {}
                    :style $ {}
                      :background-color $ if
                          get task :done?
                          , .unwrap-or false
                        hsl 0 0 80
                        , :red
                      :width 24
                      :height 24
                    :on-click $ fn (e)
                      d! :toggle-task $
                        get task :id
                        , .unwrap-or 0
                  =< 8 0
                  div
                    {} $ :style
                      {} $ :min-width 200
                    (get task :text) .unwrap-or |
                  =< 8 0
                  div
                    {} $ :on-click
                      fn (e)
                        d! :rm-task $
                          get task :id
                          , .unwrap-or 0
                    , |rm
          :examples $ []
          :schema $ :: 'Dynamic
        'memod-comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def memod-comp-task $ re-memo comp-task
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.app.comp.container $ :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            reacher.app.config :refer $ dev?
            reacher.core :refer $ defcomp div =< textarea span input button use-atom use-dispatch use-effect! re-memo wrap-comp
            |react :as React
            js-ffi.browser :as browser
            reacher.ffi :as ffi
    'reacher.app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              (get-env |mode) .unwrap-or |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key |workflow)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reacher.app.config)
    'reacher.app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *store $ {}
              :tasks $ []
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data)
              when
                and config/dev? $ not= op :states
                println |Dispatch: op
              reset! *store $ updater @*store op op-data (js/Date.now) (js/Date.now)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *store :changes $ fn (s prev) (render-app!)
              browser/set-before-unload! $ fn (event) (persist-storage!)
              ; repeat! 60 persist-storage!
              if-let
                raw $ browser/storage-get
                    get config/site :storage-key
                    , .unwrap-or |workflow
                dispatch! :hydrate-storage $ parse-cirru-edn raw
                , &unit
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ createRoot (js/document.querySelector |.app)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ browser/storage-set!
                get config/site :storage-key
                , .unwrap-or |workflow
              format-cirru-edn @*store
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes)
                add-watch *store :changes $ fn (s prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ .!render mount-target
              wrap-comp dispatch-provider
                js-object $ |value dispatch!
                wrap-comp comp-container $ js-object (:store @*store)
          :examples $ []
          :schema $ :: 'Dynamic
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.app.main $ :require
            reacher.app.comp.container :refer $ comp-container
            reacher.app.updater :refer $ updater
            reacher.app.schema :as schema
            reacher.app.config :as config
            reacher.core :refer $ render! wrap-comp dispatch-provider
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            |react-dom/client :refer $ createRoot
            js-ffi.browser :as browser
    'reacher.app.schema $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns reacher.app.schema)
    'reacher.app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op data op-id op-time)
              case-default op
                do (println "|unknown op:" op) store
                :add-task $ update store :tasks
                  fn (tasks)
                    conj tasks $ {} (:id op-id) (:time op-time) (:done? false) (:text data)
                :rm-task $ update store :tasks
                  fn (tasks)
                    -> tasks $ filter
                      fn (task)
                        not= data $
                          get task :id
                          , .unwrap-or 0
                :toggle-task $ update store :tasks
                  fn (tasks)
                    -> tasks $ map
                      fn (task)
                        if
                          = data $
                            get task :id
                            , .unwrap-or 0
                          update task :done? not
                          , task
                :hydrate-storage data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.app.updater $ :require
    'reacher.core $ %{} 'FileEntry
      :defs $ {}
        '=< $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn =< (w h)
              if (number? w)
                React/createElement |div $ js-object
                  |style $ js-object (|width w)
                React/createElement |div $ js-object
                  |style $ js-object (|height h)
          :examples $ []
          :schema $ :: 'Dynamic
        'StateRef $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct StateRef (:value 'Dynamic)
              :setter $ :: 'Fn
                {}
                  :args $ [] 'Dynamic
                  :return 'Unit
          :examples $ []
          :schema $ :: 'StructDef
        'a $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn a (props & children) (create-element |a props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn button (props & children) (create-element |button props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn canvas (props & children) (create-element |div props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'context-of-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def context-of-dispatch $ React/createContext
              fn (op data) (js/console.warn "|missing dispatch function" op)
          :examples $ []
          :schema $ :: 'Dynamic
        'create-element $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-element (tag props children)
              React/createElement (turn-string tag) (transform-props props) & children
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch-provider $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dispatch-provider $ .-Provider context-of-dispatch
          :examples $ []
          :schema $ :: 'Dynamic
        'div $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn div (props & children) (create-element |div props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'img $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn img (props & children) (create-element |img props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn input (props & children) (create-element |input props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'map-strip-keyword $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn map-strip-keyword (xs)
              map xs $ fn (x)
                if (tag? x) (turn-string x) x
          :examples $ []
          :schema $ :: 'Dynamic
        'pre $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn pre (props & children) (create-element |pre props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'props-equal $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn props-equal (prev next)
              let
                  p-fields $ contract/expect-object |Object.keys.prev (js/Object.keys prev)
                  n-fields $ contract/expect-object |Object.keys.next (js/Object.keys next)
                  p-count $ contract/expect-number |Object.keys.prev.length (contract/object-field |Object.keys.prev p-fields |length)
                  n-count $ contract/expect-number |Object.keys.next.length (contract/object-field |Object.keys.next n-fields |length)
                if (= p-count n-count)
                  .!every p-fields $ fn (k idx ? parent)
                    and (.!includes n-fields k)
                      = (aget prev k) (aget next k)
                  , false
          :examples $ []
          :schema $ :: 'Dynamic
        're-memo $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn re-memo (c) (React/memo c props-equal)
          :examples $ []
          :schema $ :: 'Dynamic
        'render! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render! (target el) (ReactDOM/render el target)
          :examples $ []
          :schema $ :: 'Dynamic
        'span $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn span (props & children) (create-element |span props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'tag* $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn tag* (name props & children)
              create-element (turn-string name) props children
          :examples $ []
          :schema $ :: 'Dynamic
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn textarea (props & children) (create-element |textarea props children)
          :examples $ []
          :schema $ :: 'Dynamic
        'transform-props $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn transform-props (props)
              if (nil? props) (&js-object)
                -> props
                  map-kv $ fn (k v)
                    if (= :style k)
                      [] |style $ let
                          s $
                            get props :style
                            , .unwrap-or ({})
                        if (empty? s) | $ -> s
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
          :examples $ []
          :schema $ :: 'Dynamic
        'use-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn use-atom (v)
              let
                  xs $ contract/expect-object |React.useState (React/useState v)
                  state $ unsafe-coerce (aget xs 0) 'Dynamic
                  setter $ unsafe-coerce
                    contract/expect-function |React.useState[1] $ aget xs 1
                    :: 'Fn $ {}
                      :args $ [] 'Dynamic
                      :return 'Unit
                StateRef :value state :setter setter
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'reacher.core/StateRef)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'use-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn use-dispatch () $ React/useContext context-of-dispatch
          :examples $ []
          :schema $ :: 'Dynamic
        'use-effect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn use-effect! (params f)
              let
                  r* $ React/useRef params
                if
                  not= params $ .-current r*
                  do $ set! (.-current r*) params
                React/useEffect f $ js-array & (.-current r*)
          :examples $ []
          :schema $ :: 'Dynamic
        'wrap-comp $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn wrap-comp (f props & children) (React/createElement f props & children)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.core $ :require (|react :as React) (|react-dom :as ReactDOM)
            reacher.util.str :refer $ get-style-value dashed->camel
            js-ffi.contract :as contract
    'reacher.ffi $ %{} 'FileEntry
      :defs $ {}
        'read-input-value $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-input-value (event)
              let
                  target $ contract/expect-object |event.target (contract/object-field |event event |target)
                contract/expect-string |event.target.value $ contract/object-field |event.target target |value
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] (:: 'JsNullish 'JsObject)
              :features $ #{} :js-ffi
        'read-store-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-store-prop (props)
              let
                  value $ contract/object-field |component.props props |store
                if (map? value)
                  unsafe-coerce value $ :: 'Map 'Tag
                    :: 'List $ :: 'Map 'Tag 'Dynamic
                  raise |JS_FFI_contract_violation:_component.props.store_expected_Map
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'JsNullish 'JsObject)
              :features $ #{} :js-ffi
              :return $ :: 'Map 'Tag
                :: 'List $ :: 'Map 'Tag 'Dynamic
        'read-task-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-task-prop (props)
              let
                  value $ contract/object-field |component.props props |task
                if (map? value)
                  unsafe-coerce value $ :: 'Map 'Tag 'Dynamic
                  raise |JS_FFI_contract_violation:_component.props.task_expected_Map
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'JsNullish 'JsObject)
              :features $ #{} :js-ffi
              :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.ffi $ :require (js-ffi.contract :as contract)
    'reacher.util.str $ %{} 'FileEntry
      :defs $ {}
        'dashed->camel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dashed->camel (x)
              .!replace x dashed-letter-pattern $ fn (cc pos prop)
                .!toUpperCase $ contract/expect-string |dashed-letter (aget cc 1)
          :examples $ []
          :schema $ :: 'Dynamic
        'dashed-letter-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dashed-letter-pattern $ new js/RegExp |-[a-z] |g
          :examples $ []
          :schema $ :: 'Dynamic
        'escape-html $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn escape-html (text)
              if (nil? text) | $ -> text (.!replace "|\"" |&quot;) (.!replace |< |&lt;) (.!replace |> |&gt;) (.!replace &newline |&#13;&#10;)
          :examples $ []
          :schema $ :: 'Dynamic
        'get-style-value $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-style-value (x prop)
              cond
                  string? x
                  , x
                (tag? x) (turn-string x)
                (number? x)
                  if (.!test pattern-non-dimension-props prop) (str x) (str x |px)
                true $ str x
          :examples $ []
          :schema $ :: 'Dynamic
        'pattern-non-dimension-props $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def pattern-non-dimension-props $ new js/RegExp "|acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" |i
          :examples $ []
          :schema $ :: 'Dynamic
        'style->string $ %{} 'CodeEntry (:doc |)
          :code $ quote
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
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns reacher.util.str $ :require (js-ffi.contract :as contract)
