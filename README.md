
Reacher: React.js in calcit-js
----

Demo http://repo.calcit-lang.org/reacher/ .

### Usages

```cirru
render! mount-target (wrap-comp C props child)
```

```cirru
use-effect! ([] :a :b) $ fn ()
  println |effect
```

```cirru
let
    *r $ use-atom |demo
  println $ .get *r
  div $ {}
    :on-click $ fn (event)
      .set! *r |another
```

```cirru
wrap-comp dispatch-provider
  js-object $ "\"value" dispatch!
  wrap-comp comp-container @*store
```

```cirru
re-memo comp-task
```

```cirru
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
