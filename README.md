
Reacher: React.js in calcit-js
----

Demo http://repo.calcit-lang.org/reacher/ .

### Usages

```cirru
render! mount-target (wrap-comp C props child)
```

```cirru
; "TODO"
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

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
