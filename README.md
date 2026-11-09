
Reacher: React.js in calcit-js
----

Demo https://repo.calcit-lang.org/reacher/ .

升级到 Calcit 和 `@calcit/procs` **0.38.0** 后，请重新生成前端 JS 并刷新页面。Respo UI 使用同系列正式补丁 0.15.2，基础样式可能变化。

React 元素的子节点列表和 `use-effect!` 的依赖列表保留调用方的元素类型。列表传给 React 时沿用原有转换。

DOM 元素辅助函数的 props 接受 Tag 键的 Map 或空值。`tag*` 的标签名使用已有的 `TextScalar` union，支持 Tag、字符串等可转换为标签文本的标量。子节点仍可混用文本、数字和 React 元素。

`map-strip-keyword` 接受 Tag 与字符串组成的混合列表，按原顺序返回字符串。直接从 JS 调用的代码也应只传这两种元素。React props 和旧存档继续在入口检查。使用 `use-dispatch` 的项目需把 entry 的 `:dispatch-op` 绑定到应用的具名操作类型，Provider 和调用方共用该类型。返回的单参数回调转发操作并返回 Unit，每次调用 hook 可返回新的回调引用。

如果存档读取、解析或 Store 校验失败，页面通过 `hud!` 显示错误并中止启动，
不渲染默认状态、不注册 watch 或离页保存，保留原文。请备份并修复原存档后重新加载；
修复前页面不会继续使用默认状态运行。空存档和合法存档仍按原逻辑启动、恢复和保存。
启动读取使用已有的 `window-local-storage` / `StorageHost.get-item` 受检接口，
只把真正缺失的 key 作为空存档；不会用会吞读取异常的 `storage-get` 判断是否存在旧数据。

发布与否以同名正式 tag 为准，源码版本号不是发布证据。

### Usages

```cirru.no-check
div
  {} $ :style $ {}
  div $ {}

tag* :div $ {} $ :style ({})
```

```cirru.no-check
render! mount-target $ wrap-comp C props child
```

```cirru.no-check
use-effect! ([] :a :b)
  fn () $ println |effect
```

```cirru.no-check
let
    *r $ use-atom |demo
  println $ :value *r
  div $ {} $ :on-click
    fn (event)
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
  d! $ app.schema/Op :update data
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### Calcit 与 COS/CDN

Calcit 与 JS 运行时使用 0.38.0，模块图使用 Respo UI 0.15.2、Respo 0.19.5、Router 0.12.2 和 JS-FFI 0.2.13。

文字转换核心使用 `TextScalar`（String、Tag、Number、Bool、Symbol）。开放 props 仍在边界验证，已有 nil 转空文本、样式单位和回调身份行为保持。

样式转换接收当前 Map pair 的 `Tuple Tag V`，用 `let[]` 分别读取 key/value，
不再把异构 pair 声明成 `List Dynamic`。保留原 Tag key 检查、文本转义、数值单位与顺序。
现有 Tag/String 混合列表 union 保持；React 的开放 props/children 与原 setter 身份保持，
不为压低 Dynamic 统计收窄公共边界，不新增强转或放宽门禁。

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
现有 Node FFI 入口保留六项断言，并执行原两项附带测试对应的 Task/Store 互换拒绝案例；
不新增测试脚本，不把 JS 宿主测试冒充 native 运行。本轮不覆盖旧 tag 或抢先发版。
正式 Linux CI 不代表所有平台均已验收或均有正式预编译 CLI；本地原 alpha 基线不是正式验收。
同时将 `defatom`、`turn-string`、`w-log` 改为当前 `defref`、`to-string`、`dbg`，
将存储解码的 `option:let` 展开为原顺序的 `.and-then`，保留首个 None 时短路。
原测试和 schema 不变，项目已无 deprecated-call 命中；这不是全生态入口退役证明。

生产资源继续使用 `https://cos-sh.tiye.me/calcit-lang/reacher/`；PR 预览路径为
`calcit-lang/reacher/pr/<PR 编号>/<run ID>/<attempt>/`，Vite 使用同一 CDN base。
COS Action 固定到正式 v1.3.0，通过 `public-base-url` 启用内置上传校验，
不增加额外校验脚本。同一 PR 或生产分支串行排队，不取消正在上传的任务。
原有服务器部署仅在 main push 执行，资源来源和目标路径保持不变。

同仓库 PR 按原流程上传隔离预览，main 合并会自动部署原 Demo；不合并或部署
其他业务应用。源码、测试和示例的迁移预览都须核对，预览为空不意味着整个生态
已无旧入口，也不能作为上游删除兼容规则的充分证据。

### License

MIT
