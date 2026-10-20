
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

使用者影响：本轮源码配对已发布的 Calcit / `@calcit/procs` `0.30.1-alpha.5`；
模块依赖升级到正式 Respo UI `0.7.41`，保留 JS-FFI `0.2.3`，不新增 alpha
或 Git hash 模块依赖。该正式依赖图统一到 Respo `0.16.122`、Router `0.8.36`
和 JS-FFI `0.2.3`，不混用尚未完成发布的 JS-FFI 0.2.4 依赖波次；
CI 使用 `caps --strict --ci` 验证，不再允许版本选择警告。
CI 检查规范快照、严格入口、全部 8 个公共命名空间及现有 FFI 测试；
不再调用硬编码 fix preset 或重复输出类型统计。

props/style 输入通过实际 Map 解码；标量文本转换通过 `data-view` 收窄，
保留 Tag 不带冒号的原有文本语义。watcher 使用 `add-watch!` / `remove-watch!`。
已发布 0.0.7 修正 `re-memo` 为实际 React memo 组件对象；React element 在
宿主边界检查，dispatch 接收具名 `Op`，Unit 回调明确返回 `&unit`。
示例组件接收并忽略 React 额外宿主参数，不关闭 arity 检查。
完整严格门禁保留 React 动态 children 的两个 spread 审查提示，不改为固定参数；
生产部署仍以 main Actions 的实际验收为准。

此前已将 React root、Object.keys 数组与 RegExp 的 3 处名义强转改成
`js-cast` 的实际宿主能力检查，并移除 useState 值到 Dynamic 的多余强转。
不改变原 trait、公开签名或 React setter 身份；setter 保留为唯一一处明确的
React FFI 强转，不用每次 render 新建的闭包替代。原状态、children、memo、
事件派发、存储 key 和部署路径不变；非法宿主能力现在在边界提前拒绝。
不新增验证脚本、框架、强转或类型预算。候选版本号不表示已发布，发版前仍需
最新 CI/review、真实浏览器和消费者验收。本轮不改 Snapshot、公开 API 或测试，
不发版、不合并生产部署；正式 `0.30.1` 当前资产尚未包含 macOS 二进制，
本次 alpha.5 配对验收不代表正式版的完整跨平台兼容保证。
同时将 `defatom`、`turn-string`、`w-log` 改为当前 `defref`、`to-string`、`dbg`，
将存储解码的 `option:let` 展开为原顺序的 `.and-then`，保留首个 None 时短路。
原测试和 schema 不变，项目已无 deprecated-call 命中；这不是全生态入口退役证明。

生产资源继续使用 `https://cos-sh.tiye.me/calcit-lang/reacher/`；PR 预览路径为
`calcit-lang/reacher/pr/<PR 编号>/<run ID>/<attempt>/`，Vite 使用同一 CDN base。
COS Action 固定到正式 v1.2.0，通过 `public-base-url` 启用内置上传校验，
不增加额外校验脚本。同一 PR 或生产分支串行排队，不取消正在上传的任务。
原有服务器部署仅在 main push 执行，资源来源和目标路径保持不变。

### License

MIT
