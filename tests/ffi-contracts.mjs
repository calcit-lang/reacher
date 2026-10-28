import assert from "node:assert/strict";

import * as calcit from "../js-out/calcit.core.mjs";
import { Store, Task, decode_store } from "../js-out/reacher.app.schema.mjs";
import {
  read_input_value,
  read_store_prop,
  read_task_prop,
} from "../js-out/reacher.ffi.mjs";

const tags = calcit.init_tags(["tasks", "id", "time", "done?", "text"]);
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
