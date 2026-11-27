import assert from "node:assert/strict";
import { renderToStaticMarkup } from "react-dom/server";

import * as calcit from "../js-out/calcit.core.mjs";
import { _$e__LT_ as spacer, canvas, div, map_strip_keyword, tag_$s_ } from "../js-out/reacher.core.mjs";
import { Store, Task, decode_store } from "../js-out/reacher.app.schema.mjs";
import {
  read_input_value,
  read_store_prop,
  read_task_prop,
} from "../js-out/reacher.ffi.mjs";

const tags = calcit.init_tags(["tasks", "id", "time", "done?", "text"]);
assert.equal(renderToStaticMarkup(spacer(8, 12)), '<div style="width:8px"></div>');
assert.equal(renderToStaticMarkup(spacer(null, "1em")), '<div style="height:1em"></div>');
assert.equal(renderToStaticMarkup(spacer(null, null)), "<div></div>");
assert.equal(renderToStaticMarkup(canvas(calcit._$n__$M_(calcit.to_tag("width"), 120))), '<canvas width="120"></canvas>');
assert.deepEqual(
  calcit.to_js_data(map_strip_keyword(calcit._$L_(tags.id, "名称", tags.id))),
  ["id", "名称", "id"],
);
assert.deepEqual(calcit.to_js_data(map_strip_keyword(calcit._$L_())), []);
assert.equal(
  renderToStaticMarkup(div(null, "prefix ", tag_$s_(calcit.to_tag("span"), calcit._$n__$M_(tags.id, "child"), 42))),
  '<div>prefix <span id="child">42</span></div>',
);

const task = calcit._$n__PCT__$M_(
  Task,
  tags.id,
  "task-1",
  tags.time,
  0,
  tags["done?"],
  false,
  tags.text,
  "demo",
);
const store = calcit._$n__PCT__$M_(Store, tags.tasks, calcit._$L_(task));

assert.equal(read_input_value({ target: { value: "ok" } }), "ok");
assert.equal(read_store_prop({ store }), store);
assert.equal(read_task_prop({ task }), task);

assert.throws(
  () => read_input_value({ target: { value: 42 } }),
  /event\.target\.value expected String/,
);
assert.throws(
  () => read_store_prop({ store: 42 }),
  /component\.props\.store_expected_Store/,
);
assert.throws(
  () => read_task_prop({ task: 42 }),
  /component\.props\.task_expected_Task/,
);

// Run the two existing attached nominal-type rejection cases on the JS host.
assert.throws(
  () => read_store_prop({ store: task }),
  /component\.props\.store_expected_Store/,
);
assert.throws(
  () => read_task_prop({ task: store }),
  /component\.props\.task_expected_Task/,
);

// Persisted Struct values have no local nominal origin. Decode fields before restoring it.
const wire = calcit.parse_cirru_edn(calcit.format_cirru_edn(store));
const restored = calcit.option_$o_unwrap(decode_store(wire));
assert.equal(read_store_prop({ store: restored }), restored);
assert.equal(calcit.format_cirru_edn(restored), calcit.format_cirru_edn(store));
assert.equal(calcit.option_$o_none_$q_(decode_store(
  calcit.parse_cirru_edn('{} $ :tasks $ [] $ {} (:id |bad) (:time 0) (:done? false) (:text 42)')
)), true);

// Reject the entire archive if any task is invalid, even when others can be restored.
const mixedTasks = calcit.parse_cirru_edn(`{} $ :tasks $ []
  {} (:id |ok) (:time 0) (:done? false) (:text |demo)
  {} (:id |bad) (:time 0) (:done? false) (:text 42)`);
assert.equal(calcit.option_$o_none_$q_(decode_store(mixedTasks)), true);

// A checked state reference decodes React's value and rejects function-valued updates,
// which React would otherwise interpret as updater callbacks.
const React = await import("react");
const { use_checked_atom } = await import("../js-out/reacher.core.mjs");
let checkedSetter;
function CheckedStateProbe({ initial, decode }) {
  const state = use_checked_atom(initial, decode);
  checkedSetter = state.nthAt(0, calcit.to_tag("setter"));
  return React.createElement("span", null, state.nthAt(1, calcit.to_tag("value")));
}
const textOnly = (value) => {
  if (typeof value !== "string") throw new Error("expected string state");
  return value;
};
assert.equal(renderToStaticMarkup(React.createElement(CheckedStateProbe, { initial: "状态 🐈", decode: textOnly })), "<span>状态 🐈</span>");
assert.throws(() => checkedSetter(() => "changed"), /Function-valued-state-is-not-supported/);
assert.throws(() => renderToStaticMarkup(React.createElement(CheckedStateProbe, { initial: 42, decode: textOnly })), /expected string state/);
assert.throws(() => renderToStaticMarkup(React.createElement(CheckedStateProbe, { initial: () => "lazy", decode: textOnly })), /Function-valued-state-is-not-supported/);
