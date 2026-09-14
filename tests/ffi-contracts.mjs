import assert from "node:assert/strict";

import * as calcit from "../js-out/calcit.core.mjs";
import { Store, Task } from "../js-out/reacher.app.schema.mjs";
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
