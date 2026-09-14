
Reacher: React.js in calcit-js
----

Demo http://repo.calcit-lang.org/reacher/ .

### Usages

```cirru.no-check
div
  {} (:style ({}))
  div ({})

tag* :div
  {} (:style ({}))
```

```cirru.no-check
render! mount-target (wrap-comp C props child)
```

```cirru.no-check
use-effect! ([] :a :b) $ fn ()
  println |effect
```

```cirru.no-check
let
    *r $ use-atom |demo
  println $ :value *r
  div $ {}
    :on-click $ fn (event)
      let
          setter $ :setter *r
        setter |another
```

```cirru.no-check
wrap-comp dispatch-provider
  js-object $ "\"value" dispatch!
  wrap-comp comp-container $ js-object $ :store @*store
```

```cirru.no-check
re-memo comp-task
```

```cirru.no-check
; Provider
wrap-comp dispatch-provider
  js-object $ "\"value" dispatch!
  wrap-comp comp-container @*store

; Consumer
let
    d! $ use-dispatch
  d! op data
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
