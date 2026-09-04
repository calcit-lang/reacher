import assert from "node:assert/strict";

import * as calcit from "../js-out/calcit.core.mjs";
import {
  read_input_value,
  read_store_prop,
  read_task_prop,
} from "../js-out/reacher.ffi.mjs";

const store = calcit._$n__$M_();
const task = calcit._$n__$M_();

assert.equal(read_input_value({ target: { value: "ok" } }), "ok");
assert.equal(read_store_prop({ store }), store);
assert.equal(read_task_prop({ task }), task);

assert.throws(
  () => read_input_value({ target: { value: 42 } }),
  /event\.target\.value expected String/,
);
assert.throws(
  () => read_store_prop({ store: 42 }),
  /component\.props\.store_expected_Map/,
);
assert.throws(
  () => read_task_prop({ task: 42 }),
  /component\.props\.task_expected_Map/,
);
