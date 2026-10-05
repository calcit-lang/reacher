
Reacher: React.js in calcit-js
----

Demo https://repo.calcit-lang.org/reacher/ .

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

### Calcit 与 COS/CDN

Calcit 和 `@calcit/procs` 使用正式 0.28.0；模块依赖使用已发布的
Respo UI 0.7.31、JS-FFI 0.2.0，不新增 alpha 或 Git hash 模块依赖。
Caps 保留普通解析模式：Respo 的已发布依赖仍请求 JS-FFI 0.1.36，
因此当前图存在版本选择警告，不能声称已通过 strict 依赖解析。
CI 检查规范快照、严格入口、全部 8 个公共命名空间及现有 FFI 测试；
不再调用硬编码 fix preset 或重复输出类型统计。

生产资源继续使用 `https://cos-sh.tiye.me/calcit-lang/reacher/`；PR 预览路径为
`calcit-lang/reacher/pr/<PR 编号>/<run ID>/<attempt>/`，Vite 使用同一 CDN base。
COS Action 固定到正式 v1.2.0，通过 `public-base-url` 启用内置上传校验，
不增加额外校验脚本。同一 PR 或生产分支串行排队，不取消正在上传的任务。
原有服务器部署仅在 main push 执行，资源来源和目标路径保持不变。

### License

MIT
