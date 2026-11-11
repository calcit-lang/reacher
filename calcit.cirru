
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |reacher
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'reacher.app.main/main!) (:mode :js) (:reload-fn 'reacher.app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo-ui.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'reacher.app.schema/Op
  :files $ {}
    'reacher.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (props & host-args)
            let
                store $ ffi/read-store-prop props
                *draft $ use-atom |
                d! $ use-dispatch
                tasks $ :tasks store
              div
                {} $ :style $ .merge ui/global ui/column
                  {} $ :padding |16px
                div
                  {} $ :style ui/row
                  input $ {}
                    :value $ :value *draft
                    :placeholder |Content
                    :style ui/input
                    :on-change $ fn (event)
                      hint-fn $ Fn JsObject $ -> Unit
                      let
                          setter $ :setter *draft
                        setter $ ffi/read-input-value event
                  =< 8 0
                  button
                    {} (:style ui/button)
                      :on-click $ fn (event)
                        d! $ schema/Op :add-task $ decode-map-as (:value *draft) 'String
                        let
                            setter $ :setter *draft
                          setter |
                    , |Run
                =< 8 0
                div ({}) & $ .map tasks $ fn (task)
                  hint-fn $ Fn reacher.app.schema/Task $ -> JsObject
                  wrap-comp memod-comp-task $ &js-object :task task :id $ :id task
          :examples $ []
          :schema $ quote $ Fn (JsNullish JsObject)
            & $ JsNullish JsObject
            -> JsObject
            :features :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-task (props & host-args)
            use-effect!
              [] $ browser/random
              fn () (println |effect) &unit
            js/console.log |task props
            let
                task $ ffi/read-task-prop props
                d! $ use-dispatch
              div
                {} $ :style $ .merge ui/row-middle
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
          :schema $ quote $ Fn (JsNullish JsObject)
            & $ JsNullish JsObject
            -> JsObject
            :features :js-ffi
        'memod-comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def memod-comp-task (re-memo comp-task)
          :examples $ []
          :schema $ quote JsObject
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
          :code $ quote $ defstruct Site (:storage-key String)
          :examples $ []
          :schema $ quote StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (Site :storage-key |workflow)
          :examples $ []
          :schema $ quote Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.config
    'reacher.app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store
            schema/Store :tasks $ []
          :examples $ []
          :schema $ quote $ Ref schema/Store
        'create-root-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-root-host (target)
            js-cast (createRoot target) 'reacher.core/ReactRootHost
          :examples $ []
          :schema $ quote $ Fn browser/DomElementHost (-> reacher.core/ReactRootHost) (:features :js-ffi)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            let
                now $ shared/date-now-snapshot
              reset! *store $ updater @*store op (generate-id!) (:timestamp now)
              , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println |Running_mode: $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            try
              match
                js-nullish->option $ .get-item (browser/window-local-storage) (:storage-key config/site)
                (:some raw)
                  match
                    schema/decode-store $ parse-cirru-edn raw
                    (:some stored)
                      dispatch! $ schema/Op :hydrate-storage stored
                    (:none)
                      raise "|Invalid saved state; original storage preserved."
                (:none) &unit
              fn (error)
                let
                    message $ :message $ shared/normalize-error error
                  hud! |error message
                  raise message
            render-app!
            add-watch! *store :changes $ fn (s prev) (render-app!)
            browser/set-before-unload! $ fn (event) (persist-storage!)
            println |App_started.
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            create-root-host $ .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ quote reacher.core/ReactRootHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site) (format-cirru-edn @*store)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *store :changes)
                add-watch! *store :changes $ fn (s prev) (render-app!)
                render-app!
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            mount-target .render! $ wrap-comp dispatch-provider
              js-object $ |value dispatch!
              wrap-comp comp-container $ js-object $ :store @*store
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
            , &unit
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Unit
            :features :js-ffi
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
          :code $ quote $ defenum Op (:add-task String) (:rm-task String) (:toggle-task String) (:hydrate-storage reacher.app.schema/Store)
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :tasks $ List reacher.app.schema/Task
          :examples $ []
          :schema $ quote StructDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id String) (:time Number) (:done? Bool) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'decode-store $ %{} 'CodeEntry
          :doc "|Decode persisted wire data by checking every task field and reconstructing local Task/Store values. Serialized Struct origin is not preserved; Struct names are not identity or authorization at this boundary. Component props still require local nominal values."
          :code $ quote $ defn decode-store (data)
            if
              or (map? data) (struct? data)
              match (get data :tasks)
                (:some tasks)
                  if (list? tasks)
                    let
                        decoded-tasks $ .map tasks decode-task
                      if
                        every? decoded-tasks $ fn (task)
                          hint-fn $ Fn (Option reacher.app.schema/Task) (-> Bool)
                          .some? task
                        Some $ Store :tasks $ assert-type
                          .map decoded-tasks $ fn (task)
                            hint-fn $ Fn (Option reacher.app.schema/Task) (-> reacher.app.schema/Task)
                            .unwrap task
                          List reacher.app.schema/Task
                        , None
                    , None
                (:none) None
              , None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Store
            :generics Input
        'decode-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-task (data)
            let
                candidate $ if (struct? data)
                  Some $ &struct:to-map data
                  if (map? data) (Some data) None
              match candidate
                (:some value)
                  .and-then (get value :id)
                    fn (id)
                      .and-then (get value :time)
                        fn (time)
                          .and-then (get value :done?)
                            fn (done?)
                              .and-then (get value :text)
                                fn (text)
                                  if
                                    and (string? id) (number? time) (bool? done?) (string? text)
                                    Some $ Task :id id :time time :done? done? :text text
                                    , None
                (:none) None
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option Task
            :generics Input
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.schema
    'reacher.app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:add-task text)
                reacher.app.schema/Store :tasks $ .append (:tasks store)
                  reacher.app.schema/Task :id op-id :time op-time :done? false :text text
              (:rm-task task-id)
                reacher.app.schema/Store :tasks $ .filter (:tasks store)
                  fn (task)
                    hint-fn $ Fn reacher.app.schema/Task $ -> Bool
                    not= task-id $ :id task
              (:toggle-task task-id)
                reacher.app.schema/Store :tasks $ .map (:tasks store)
                  fn (task)
                    hint-fn $ Fn reacher.app.schema/Task $ -> reacher.app.schema/Task
                    if
                      = task-id $ :id task
                      update task :done? not
                      , task
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn reacher.app.schema/Store reacher.app.schema/Op String Number (-> reacher.app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.app.updater (:require)
    'reacher.core $ %{} 'FileEntry
      :defs $ {}
        '=< $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn =< (w h)
            js-ffi.contract/expect-object |React.=< $ if (number? w)
              React/createElement |div $ js-object $ |style
                js-object $ |width w
              React/createElement |div $ js-object $ |style
                js-object $ |height h
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> JsObject) (:features :js-ffi)
        'JsKeyArrayHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait JsKeyArrayHost (:length 'Number)
            .includes $ Fn reacher.core/JsKeyArrayHost String $ -> Bool
            .every $ Fn reacher.core/JsKeyArrayHost
              Fn String Number reacher.core/JsKeyArrayHost $ -> Bool
              -> Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:every |every) (:includes |includes)
          :schema $ quote Trait
        'KeywordOrString $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion KeywordOrString Tag String
          :examples $ []
          :schema $ quote UnionDef
        'ReactRootHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ReactRootHost
            .render! $ Fn reacher.core/ReactRootHost JsObject $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :render! |render
          :schema $ quote Trait
        'StateRef $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StateRef (:value Dynamic)
            :setter $ Fn Dynamic $ -> Unit
          :examples $ []
          :schema $ quote StructDef
        'a $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn a (props & children) (create-element |a props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn button (props & children) (create-element |button props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'canvas $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn canvas (props & children) (create-element |div props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'context-of-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def context-of-dispatch (create-dispatch-context)
          :examples $ []
          :schema $ quote JsObject
        'create-dispatch-context $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-dispatch-context ()
            contract/expect-object |React.createContext $ React/createContext $ fn (op) (println |missing_dispatch_function op)
          :examples $ []
          :schema $ quote $ Fn (-> JsObject) (:features :js-ffi)
        'create-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-element (tag props children)
            js-ffi.contract/expect-object |React.create-element $ React/createElement (reacher.util.str/scalar-string tag) (transform-props props) & children
          :examples $ []
          :schema $ quote $ Fn reacher.util.str/TextScalar
            JsNullish $ Map Tag Dynamic
            List Child
            -> JsObject
            :generics Child
            :features :js-ffi
        'dispatch-provider $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dispatch-provider
            contract/expect-object |React.Context.Provider $ contract/object-field |React.Context context-of-dispatch |Provider
          :examples $ []
          :schema $ quote JsObject
        'div $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn div (props & children) (create-element |div props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'img $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn img (props & children) (create-element |img props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn input (props & children) (create-element |input props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'map-strip-keyword $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-strip-keyword (xs)
            .map xs $ fn (x)
              hint-fn $ Fn reacher.core/KeywordOrString $ -> String
              match x
                (Tag k) (to-string k)
                (String text) text
          :examples $ []
          :schema $ quote $ Fn (List KeywordOrString)
            -> $ List String
        'object-keys-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn object-keys-host (value)
            js-cast (js/Object.keys value) 'reacher.core/JsKeyArrayHost
          :examples $ []
          :schema $ quote $ Fn JsObject (-> JsKeyArrayHost) (:features :js-ffi)
        'pre $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pre (props & children) (create-element |pre props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
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
          :schema $ quote $ Fn JsObject JsObject (-> Bool) (:features :js-ffi)
        're-memo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn re-memo (c)
            js-ffi.contract/expect-object |React.re-memo $ React/memo c props-equal
          :examples $ []
          :schema $ quote $ Fn
            Fn (JsNullish JsObject)
              & $ JsNullish JsObject
              -> R
            -> JsObject
            :generics R
            :features :js-ffi
        'render! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render! (target el) (ReactDOM/render el target) &unit
          :examples $ []
          :schema $ quote $ Fn JsObject JsObject (-> Unit) (:features :js-ffi)
        'span $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn span (props & children) (create-element |span props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'tag* $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tag* (name props & children) (create-element name props children)
          :examples $ []
          :schema $ quote $ Fn reacher.util.str/TextScalar
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn textarea (props & children) (create-element |textarea props children)
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            & Dynamic
            -> JsObject
            :features :js-ffi
        'transform-props $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn transform-props (props)
            js-ffi.contract/expect-object |React.transform-props $ match (js-nullish->option props)
              (:none) (&js-object)
              (:some raw-props)
                let
                    typed-props $ decode-map-as raw-props $ Map Tag Dynamic
                  -> typed-props
                    filter-map-kv $ fn (k v)
                      hint-fn $ Fn Tag Dynamic $ -> (MapEntryDecision String Dynamic)
                      if (= :style k)
                        MapEntryDecision :keep |style $ let
                            s $ decode-map-as
                              .unwrap-or (get typed-props :style) ({})
                              Map Tag Dynamic
                          if (empty? s) | $ -> s
                            filter-map-kv $ fn (style-key style-value)
                              hint-fn $ Fn Tag Dynamic $ -> (MapEntryDecision String String)
                              let
                                  prop $ dashed->camel $ reacher.util.str/scalar-text style-key
                                MapEntryDecision :keep prop $ get-style-value style-value prop
                            to-js-data
                        MapEntryDecision :keep
                          dashed->camel $ reacher.util.str/scalar-text k
                          if (fn? v) v $ reacher.util.str/scalar-string v
                    to-js-data
          :examples $ []
          :schema $ quote $ Fn
            JsNullish $ Map Tag Dynamic
            -> JsObject
            :features :js-ffi
        'use-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-atom (v)
            let
                xs $ contract/expect-object |React.useState $ React/useState v
                state $ aget xs 0
                setter $ unsafe-coerce
                  contract/expect-function |React.useState[1] $ aget xs 1
                  Fn Dynamic $ -> Unit
              StateRef :value state :setter setter
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> StateRef) (:features :js-ffi)
        'use-dispatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-dispatch ()
            let
                dispatch $ React/useContext context-of-dispatch
              if (fn? dispatch)
                fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  dispatch op
                  , &unit
                raise "|React dispatch context expects a function"
          :examples $ []
          :schema $ quote $ Fn
            -> $ Fn *dispatch-op $ -> Unit
            :features :js-ffi
        'use-effect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-effect! (params f)
            React/useEffect f $ to-js-data params
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List Dependency)
            Fn $ -> Unit
            -> Unit
            :generics Dependency
            :features :js-ffi
        'wrap-comp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn wrap-comp (f props & children)
            js-ffi.contract/expect-object |React.wrap-comp $ React/createElement f props & children
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (& Dynamic) (-> JsObject) (:features :js-ffi)
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
          :schema $ quote $ Fn JsObject (-> String) (:features :js-ffi)
        'read-store-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-store-prop (props)
            let
                value $ contract/object-field |component.props props |store
              if (struct? value)
                struct-match value (reacher.app.schema/Store store store)
                  _ _ $ raise |JS_FFI_contract_violation:_component.props.store_expected_Store
                raise |JS_FFI_contract_violation:_component.props.store_expected_Store
          :examples $ []
          :schema $ quote $ Fn (JsNullish JsObject) (-> reacher.app.schema/Store) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |reject-task-as-store)
            :code $ quote $ calcit.test/is-throws
              read-store-prop $ js-object $ :store
                reacher.app.schema/Task :id |t :time 0 :done? false :text |x
        'read-task-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-task-prop (props)
            let
                value $ contract/object-field |component.props props |task
              if (struct? value)
                struct-match value (reacher.app.schema/Task task task)
                  _ _ $ raise |JS_FFI_contract_violation:_component.props.task_expected_Task
                raise |JS_FFI_contract_violation:_component.props.task_expected_Task
          :examples $ []
          :schema $ quote $ Fn (JsNullish JsObject) (-> reacher.app.schema/Task) (:features :js-ffi)
          :tests $ [] $ %{} 'TestEntry (:name |reject-store-as-task)
            :code $ quote $ calcit.test/is-throws
              read-task-prop $ js-object $ :task
                reacher.app.schema/Store :tasks $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.ffi
          :require $ js-ffi.contract :as contract
    'reacher.util.str $ %{} 'FileEntry
      :defs $ {}
        'RegexHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegexHost
            .test $ Fn reacher.util.str/RegexHost String $ -> Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :test |test
          :schema $ quote Trait
        'TextScalar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion TextScalar String Tag Number Bool Symbol
          :examples $ []
          :schema $ quote UnionDef
        'create-regex-host $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-regex-host (pattern flags)
            js-cast (new js/RegExp pattern flags) 'reacher.util.str/RegexHost
          :examples $ []
          :schema $ quote $ Fn String String (-> RegexHost) (:features :js-ffi)
        'dashed->camel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dashed->camel (x)
            contract/expect-string |String.replace $ .!replace x dashed-letter-pattern $ fn (cc pos prop)
              .!toUpperCase $ contract/expect-string |dashed-letter $ aget cc 1
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'dashed-letter-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dashed-letter-pattern (create-regex-host |-[a-z] |g)
          :examples $ []
          :schema $ quote RegexHost
        'escape-html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn escape-html (text)
            let
                a $ contract/expect-string |escape.quote $ .!replace text "|\"" |&quot;
                b $ contract/expect-string |escape.lt $ .!replace a |< |&lt;
                c $ contract/expect-string |escape.gt $ .!replace b |> |&gt;
              contract/expect-string |escape.newline $ .!replace c &newline |&#13;&#10;
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'get-style-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-style-value (x prop)
            cond
                string? x
                , x
              (tag? x) (reacher.util.str/scalar-string x)
              (number? x)
                if (pattern-non-dimension-props .test prop) (str x) (str x |px)
              true $ str x
          :examples $ []
          :schema $ quote $ Fn Dynamic String (-> String) (:features :js-ffi)
        'pattern-non-dimension-props $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def pattern-non-dimension-props
            create-regex-host "|acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" |i
          :examples $ []
          :schema $ quote RegexHost
        'scalar-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scalar-string (value)
            if (nil? value) | $ match (try-decode-map-as value reacher.util.str/TextScalar)
              (:ok scalar) (scalar-text scalar)
              (:err _) (raise "|expected scalar text")
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T)
        'scalar-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scalar-text (value)
            match value
              (String s) s
              (Tag x) (to-string x)
              (Number x) (to-string x)
              (Bool x) (to-string x)
              (Symbol x) (to-string x)
          :examples $ []
          :schema $ quote $ Fn TextScalar (-> String)
        'style->string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn style->string (styles)
            -> (&map:to-list styles)
              .map $ fn (entry)
                hint-fn $ Fn (Tuple Tag V) (-> String)
                let[] (k value) entry $ let
                    style-name $ reacher.util.str/scalar-text $ decode-map-as k 'Tag
                    v $ dbg $ get-style-value value (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              join-string |
          :examples $ []
          :schema $ quote $ Fn (Map Tag V) (-> String) (:generics V)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns reacher.util.str
          :require $ js-ffi.contract :as contract
