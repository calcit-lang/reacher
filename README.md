
Reacher: React.js in calcit-js
----

Demo https://repo.calcit-lang.org/reacher/ .

使用者注意：本轮保持正式 Calcit CLI / `@calcit/procs` **0.31.0**，
配对 UI **0.9.0-alpha.4** / JS-FFI **0.2.7**；请同步完整依赖图、重新生成 JS 并完整刷新页面，不混装旧 alpha。
这次修复升级后“新建任务刷新即被拒绝”的存档恢复问题：序列化 Struct 不保留本地名义来源，
恢复入口将 Struct 作为 wire 数据转为 Map，检查 id/time/done?/text 全部字段，随后构造本地 Task/Store。
名称不是身份或授权；组件 props 的名义类型检查保持不变，不接受错误类型冒充 Task/Store。
原 FFI 测试补充真实序列化往返及非法字段拒绝，浏览器已验证任务和完成状态刷新恢复。
React 18、公开组件 API、状态/存储格式及 setter 身份不变；UI 基础样式可能变化。
Demo 先读取/恢复存档，再首次渲染和注册 watch/离页保存：解析抛错时不再留下
会覆盖原存档的保存回调。合法 EDN 但不符合 Store 的值仍按原逻辑显示 HUD，
本次不改变该分支的既定处理策略，也不承诺这种值会在离页后保留。
发布与否以同名正式 tag 为准，源码版本号不是发布证据。

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

本轮保持正式 Calcit / `@calcit/procs` `0.31.0`；
模块依赖为已发布的 Respo UI `0.9.0-alpha.4`、JS-FFI `0.2.7`。UI 对应 0.31.0 的已发布 tag 仍为 alpha，
传递依赖为 Respo `0.17.0-alpha.4`、Router `0.9.0-alpha.3`；没有引入 Git hash。
CI 使用 `caps --strict --ci` 验证，不再允许版本选择警告。
CI 检查规范快照、全部定义和现有 FFI 测试，完整 strict 要求 passed 且 diagnostics 为空；
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
最新 CI/review、真实浏览器和消费者验收。本轮清理七处 Option 调用/函数引用及十一处
Map/List 写法，保留原解析、decode/hydrate、HUD 和异常传播，不修改公开 schema。
单参数的样式 merge 直接移除；Option 方法作为高阶函数参数时使用具体回调合同，保留 None 短路顺序。
`map-strip-keyword` 保留原 Tag 转字符串及非 Tag 透传分支，公开
`List<Tag> -> List<String>` 合同不变；本轮不重新定义混合输入的 API 边界。
现有 Node FFI 入口保留六项断言，并执行原两项附带测试对应的 Task/Store 互换拒绝案例；
不新增测试脚本，不把 JS 宿主测试冒充 native 运行。本轮不覆盖旧 tag 或抢先发版。
正式 Linux CI 不代表所有平台均已验收或均有正式预编译 CLI；本地原 alpha 基线不是正式验收。
同时将 `defatom`、`turn-string`、`w-log` 改为当前 `defref`、`to-string`、`dbg`，
将存储解码的 `option:let` 展开为原顺序的 `.and-then`，保留首个 None 时短路。
原测试和 schema 不变，项目已无 deprecated-call 命中；这不是全生态入口退役证明。

生产资源继续使用 `https://cos-sh.tiye.me/calcit-lang/reacher/`；PR 预览路径为
`calcit-lang/reacher/pr/<PR 编号>/<run ID>/<attempt>/`，Vite 使用同一 CDN base。
COS Action 固定到正式 v1.2.0，通过 `public-base-url` 启用内置上传校验，
不增加额外校验脚本。同一 PR 或生产分支串行排队，不取消正在上传的任务。
原有服务器部署仅在 main push 执行，资源来源和目标路径保持不变。

同仓库 PR 按原流程上传隔离预览，main 合并会自动部署原 Demo；不合并或部署
其他业务应用。源码、测试和示例的迁移预览都须核对，预览为空不意味着整个生态
已无旧入口，也不能作为上游删除兼容规则的充分证据。

### License

MIT
