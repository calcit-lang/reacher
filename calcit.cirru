
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |reacher
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'reacher.app.main/main!) (:mode :js) (:reload-fn 'reacher.app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo-ui.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'reacher.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (props)
            let
                store $ ffi/read-store-prop props
                *draft $ use-atom |
                d! $ use-dispatch
                tasks $ :tasks store
              div
                {} $ :style $ merge ui/global ui/column
                  {} $ :padding |16px
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
                        d! $ schema/Op :add-task $ assert-type (:value *draft) 'String
                        let
                            setter $ :setter *draft
                          setter |
                    , |Run
                =< 8 0
                div ({}) & $ map tasks $ fn (task)
                  wrap-comp memod-comp-task $ &js-object :task task :id $ :id task
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-task (props)
            use-effect!
              [] $ browser/random
              fn () $ println |effect
            js/console.log |task props
            let
                task $ ffi/read-task-prop props
                d! $ use-dispatch
              div
                {} $ :style $ merge ui/row-middle
                  {} $ :margin :4px
                div $ {}
                  :style $ {}
                    :background-color $ if (:done? task) (hsl 0 0 80) :red
                    :width 24
                    :height 24
                  :on-click $ fn (e)
                    d! $ schema/Op :toggle-task $ :id task
                =< 8 0
                div
                  {} $ :style $ {} (:min-width 200)
                  :text task
                =< 8 0
                div
                  {} $ :on-click $ fn (e)
                    d! $ schema/Op :rm-task $ :id task
                  , |rm
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
        'memod-comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def memod-comp-task (re-memo comp-task)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.comp.container
          :require (respo-ui.core :as ui)
            respo-ui.core :refer $ hsl
            reacher.app.config :refer $ dev?
            reacher.core :refer $ defcomp div =< textarea span input button use-atom use-dispatch use-effect! re-memo wrap-comp
            |react :as React
            js-ffi.browser :as browser
            reacher.ffi :as ffi
            reacher.app.schema :as schema
    'reacher.app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (Site :storage-key |workflow)
          :examples $ []
          :schema $ :: 'reacher.app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.config
    'reacher.app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store
            schema/Store :tasks $ []
          :examples $ []
          :schema $ :: 'Ref 'reacher.app.schema/Store
        'create-root-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-root-host (target)
            unsafe-coerce (createRoot target) 'reacher.core/ReactRootHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.core/ReactRootHost)
            :args $ [] 'js-ffi.browser/DomElementHost
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not= op :states
              println |Dispatch: op
            let
                typed-op $ assert-type op 'Enum
                now $ shared/date-now-snapshot
              reset! *store $ updater @*store (assert-type typed-op 'reacher.app.schema/Op) (generate-id!) (:timestamp now)
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println |Running_mode: $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *store :changes $ fn (s prev) (render-app!)
            browser/set-before-unload! $ fn (event) (persist-storage!)
            match
              browser/storage-get $ :storage-key config/site
              (:some raw)
                match
                  schema/decode-store $ parse-cirru-edn raw
                  (:some stored)
                    dispatch! $ schema/Op :hydrate-storage stored
                  (:none) (hud! |error |Ignored_invalid_saved_state)
              (:none) &unit
            println |App_started.
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            create-root-host $ option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'reacher.core/ReactRootHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site) (format-cirru-edn @*store)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *store :changes)
                add-watch *store :changes $ fn (s prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            mount-target .render! $ wrap-comp dispatch-provider
              js-object $ |value dispatch!
              wrap-comp comp-container $ js-object $ :store @*store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.main
          :require
            reacher.app.comp.container :refer $ comp-container
            reacher.app.updater :refer $ updater
            reacher.app.schema :as schema
            reacher.app.config :as config
            reacher.core :refer $ render! wrap-comp dispatch-provider
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            |react-dom/client :refer $ createRoot
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'reacher.app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:add-task 'String) (:rm-task 'String) (:toggle-task 'String) (:hydrate-storage 'reacher.app.schema/Store)
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :tasks $ :: 'List 'reacher.app.schema/Task
          :examples $ []
          :schema $ :: 'StructDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id 'String) (:time 'Number) (:done? 'Bool) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            if
              or (map? data) (struct? data)
              match (get data :tasks)
                (:some tasks)
                  if (list? tasks)
                    %some $ Store :tasks $ assert-type tasks (:: 'List 'reacher.app.schema/Task)
                    %none
                (:none) (%none)
              %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Option 'reacher.app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.schema
    'reacher.app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:add-task text)
                reacher.app.schema/Store :tasks $ conj (:tasks store)
                  reacher.app.schema/Task :id op-id :time op-time :done? false :text text
              (:rm-task task-id)
                reacher.app.schema/Store :tasks $ filter (:tasks store)
                  fn (task)
                    hint-fn $ {}
                      :args $ [] 'reacher.app.schema/Task
                      :return 'Bool
                    not= task-id $ :id task
              (:toggle-task task-id)
                reacher.app.schema/Store :tasks $ map (:tasks store)
                  fn (task)
                    hint-fn $ {}
                      :args $ [] 'reacher.app.schema/Task
                      :return 'reacher.app.schema/Task
                    if
                      = task-id $ :id task
                      update task :done? not
                      , task
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.app.schema/Store)
            :args $ [] 'reacher.app.schema/Store 'reacher.app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.updater (:require)
    'reacher.core $ %{} 'FileEntry
      :defs $ {}
        '=< $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn =< (w h)
            if (number? w)
              React/createElement |div $ js-object $ |style
                js-object $ |width w
              React/createElement |div $ js-object $ |style
                js-object $ |height h
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'JsKeyArrayHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait JsKeyArrayHost (:length 'Number)
            .includes $ :: 'Fn $ {}
              :args $ [] 'reacher.core/JsKeyArrayHost 'String
              :return 'Bool
            .every $ :: 'Fn $ {}
              :args $ [] 'reacher.core/JsKeyArrayHost $ :: 'Fn
                {}
                  :args $ [] 'String 'Number 'reacher.core/JsKeyArrayHost
                  :return 'Bool
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:every |every) (:includes |includes)
          :schema $ :: 'Trait
        'ReactRootHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ReactRootHost
            .render! $ :: 'Fn $ {}
              :args $ [] 'reacher.core/ReactRootHost 'JsObject
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :render! |render
          :schema $ :: 'Trait
        'StateRef $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateRef (:value 'Dynamic)
            :setter $ :: 'Fn $ {}
              :args $ [] 'Dynamic
              :return 'Unit
          :examples $ []
          :schema $ :: 'StructDef
        'a $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn a (props & children) (create-element |a props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn button (props & children) (create-element |button props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn canvas (props & children) (create-element |div props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'context-of-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def context-of-dispatch (create-dispatch-context)
          :examples $ []
          :schema $ :: 'JsObject
        'create-dispatch-context $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-dispatch-context ()
            contract/expect-object |React.createContext $ React/createContext $ fn (op) (println |missing_dispatch_function op)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'create-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-element (tag props children)
            React/createElement (turn-string tag) (transform-props props) & children
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'dispatch-provider $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dispatch-provider
            contract/expect-object |React.Context.Provider $ contract/object-field |React.Context context-of-dispatch |Provider
          :examples $ []
          :schema $ :: 'JsObject
        'div $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn div (props & children) (create-element |div props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'img $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn img (props & children) (create-element |img props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn input (props & children) (create-element |input props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'map-strip-keyword $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-strip-keyword (xs)
            map xs $ fn (x)
              if (tag? x) (turn-string x) x
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Tag
            :return $ :: 'List 'String
        'object-keys-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn object-keys-host (value)
            unsafe-coerce (js/Object.keys value) 'reacher.core/JsKeyArrayHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.core/JsKeyArrayHost)
            :args $ [] 'JsObject
            :features $ #{} :js-ffi
        'pre $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pre (props & children) (create-element |pre props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'props-equal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn props-equal (prev next)
            let
                p-fields $ object-keys-host prev
                n-fields $ object-keys-host next
              if
                = (p-fields :length) (n-fields :length)
                p-fields .every $ fn (k idx parent)
                  and (n-fields .includes k)
                    = (aget prev k) (aget next k)
                , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'JsObject 'JsObject
            :features $ #{} :js-ffi
        're-memo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn re-memo (c) (React/memo c props-equal)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Fn)
            :args $ [] 'Fn
            :features $ #{} :js-ffi
        'render! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render! (target el) (ReactDOM/render el target)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'JsObject 'JsObject
            :features $ #{} :js-ffi
        'span $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn span (props & children) (create-element |span props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'tag* $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tag* (name props & children)
            create-element (turn-string name) props children
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn textarea (props & children) (create-element |textarea props children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'transform-props $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn transform-props (props)
            if (nil? props) (&js-object)
              let
                  typed-props $ assert-type props $ :: 'Map 'Tag 'Dynamic
                -> typed-props
                  filter-map-kv $ fn (k v)
                    hint-fn $ {}
                      :args $ [] 'Tag 'Dynamic
                      :return $ :: 'MapEntryDecision 'String 'Dynamic
                    if (= :style k)
                      %:: MapEntryDecision :keep |style $ let
                          s $ assert-type
                            option:unwrap-or (get typed-props :style) ({})
                            :: 'Map 'Tag 'Dynamic
                        if (empty? s) | $ -> s
                          filter-map-kv $ fn (style-key style-value)
                            hint-fn $ {}
                              :args $ [] 'Tag 'Dynamic
                              :return $ :: 'MapEntryDecision 'String 'String
                            let
                                prop $ dashed->camel $ turn-string style-key
                              %:: MapEntryDecision :keep prop $ get-style-value style-value prop
                          to-js-data
                      %:: MapEntryDecision :keep
                        dashed->camel $ turn-string k
                        if (fn? v) v $ turn-string v
                  to-js-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'use-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-atom (v)
            let
                xs $ contract/expect-object |React.useState $ React/useState v
                state $ unsafe-coerce (aget xs 0) 'Dynamic
                setter $ unsafe-coerce
                  contract/expect-function |React.useState[1] $ aget xs 1
                  :: 'Fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
              StateRef :value state :setter setter
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.core/StateRef)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'use-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-dispatch () (React/useContext context-of-dispatch)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Fn)
            :args $ []
            :features $ #{} :js-ffi
        'use-effect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-effect! (params f)
            React/useEffect f $ to-js-data params
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
        'wrap-comp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn wrap-comp (f props & children) (React/createElement f props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.core
          :require (|react :as React) (|react-dom :as ReactDOM)
            reacher.util.str :refer $ get-style-value dashed->camel
            js-ffi.contract :as contract
    'reacher.ffi $ %{} 'FileEntry
      :defs $ {}
        'read-input-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-input-value (event)
            let
                target $ contract/expect-object |event.target $ contract/object-field |event event |target
              contract/expect-string |event.target.value $ contract/object-field |event.target target |value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
        'read-store-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-store-prop (props)
            let
                value $ contract/object-field |component.props props |store
              if (struct? value) (unsafe-coerce value 'reacher.app.schema/Store)
                raise |JS_FFI_contract_violation:_component.props.store_expected_Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.app.schema/Store)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
        'read-task-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-task-prop (props)
            let
                value $ contract/object-field |component.props props |task
              if (struct? value) (unsafe-coerce value 'reacher.app.schema/Task)
                raise |JS_FFI_contract_violation:_component.props.task_expected_Task
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.app.schema/Task)
            :args $ [] $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.ffi
          :require $ js-ffi.contract :as contract
    'reacher.util.str $ %{} 'FileEntry
      :defs $ {}
        'RegexHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegexHost
            .test $ :: 'Fn $ {}
              :args $ [] 'reacher.util.str/RegexHost 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :test |test
          :schema $ :: 'Trait
        'create-regex-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-regex-host (pattern flags)
            unsafe-coerce (new js/RegExp pattern flags) 'reacher.util.str/RegexHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'reacher.util.str/RegexHost)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'dashed->camel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dashed->camel (x)
            contract/expect-string |String.replace $ .!replace x dashed-letter-pattern $ fn (cc pos prop)
              .!toUpperCase $ contract/expect-string |dashed-letter $ aget cc 1
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'dashed-letter-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dashed-letter-pattern (create-regex-host |-[a-z] |g)
          :examples $ []
          :schema $ :: 'reacher.util.str/RegexHost
        'escape-html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn escape-html (text)
            let
                a $ contract/expect-string |escape.quote $ .!replace text "|\"" |&quot;
                b $ contract/expect-string |escape.lt $ .!replace a |< |&lt;
                c $ contract/expect-string |escape.gt $ .!replace b |> |&gt;
              contract/expect-string |escape.newline $ .!replace c &newline |&#13;&#10;
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'get-style-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-style-value (x prop)
            cond
                string? x
                , x
              (tag? x) (turn-string x)
              (number? x)
                if (pattern-non-dimension-props .test prop) (str x) (str x |px)
              true $ str x
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic 'String
            :features $ #{} :js-ffi
        'pattern-non-dimension-props $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-non-dimension-props
            create-regex-host "|acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" |i
          :examples $ []
          :schema $ :: 'reacher.util.str/RegexHost
        'style->string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn style->string (styles)
            -> (&map:to-list styles)
              map $ fn (entry)
                let
                    k $ first entry
                    style-name $ turn-string k
                    v $ w-log $ get-style-value (last entry) (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              join-str |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'V
            :generics $ [] 'V
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.util.str
          :require $ js-ffi.contract :as contract
