import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',maxBuffer:20*1024*1024});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
assert.equal(run('-v').trim(),'0.30.1');run('docs','agents','--contract');
const config=q('config');
function inventory(){
  const defs=[],namespaces=q('ns').namespaces;assert.equal(namespaces.length,9);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count);
    for(const name of names)defs.push(q('def',`${ns}/${name}`));
  }
  assert.equal(defs.length,62);assert.equal(defs.reduce((n,d)=>n+d.tests.length,0),2);return defs;
}
const before=inventory();assert.deepEqual(before,JSON.parse(readFileSync('acceptance/reviewed.json','utf8')));
const expected=structuredClone(before),counts={option:0,map:0,merge:0,conj:0,filter:0};
const task="'reacher.app.schema/Task",optionTask=['::',"'Option",task];
const hint=(args,returns)=>['hint-fn',['{}',[':return',returns],[':args',['[]',...args]]]];
function normalize(node){
  if(!Array.isArray(node))return node;
  const n=node.map(normalize);
  if(n[0]==='every?'&&n[2]==='option:some?'){
    counts.option++;n[2]=['fn',['task'],hint([optionTask],"'Bool"),['.some?','task']];
  }
  if(n[0]==='map'&&n[2]==='option:unwrap'){
    counts.option++;n[2]=['fn',['task'],hint([optionTask],task),['.unwrap','task']];
  }
  if(typeof n[0]==='string'&&n[0].startsWith('option:')){
    assert.ok(['option:unwrap','option:unwrap-or'].includes(n[0]));counts.option++;n[0]=n[0].replace('option:','.');
  }
  if(['map','merge','conj','filter'].includes(n[0])){counts[n[0]]++;n[0]=n[0]==='conj'?'.append':`.${n[0]}`;}
  return n;
}
for(const d of expected)d.code=normalize(d.code);
assert.deepEqual(counts,{option:7,map:6,merge:3,conj:1,filter:1});
const get=id=>expected.find(d=>d.id===id);
const strip=get('reacher.core/map-strip-keyword');
assert.deepEqual(strip.code[3],['.map','xs',['fn',['x'],['if',['tag?','x'],['to-string','x'],'x']]]);
strip.code[3][2]='to-string';
function addMapHint(d,predicate,args,returns){
  const matches=[];
  function walk(n){if(!Array.isArray(n))return;if(n[0]==='.map'&&predicate(n))matches.push(n);n.forEach(walk);}
  walk(d.code);assert.equal(matches.length,1,d.id);const f=matches[0][2];assert.equal(f[0],'fn');assert.ok(f[2][0]!=='hint-fn');f.splice(2,0,hint(args,returns));
}
addMapHint(get('reacher.app.schema/decode-store'),n=>n[1]==='tasks',["'Dynamic"],optionTask);
addMapHint(get('reacher.app.comp.container/comp-container'),n=>n[1]==='tasks',[task],"'JsObject");
addMapHint(get('reacher.util.str/style->string'),()=>true,[['::',"'List","'Dynamic"]],"'String");
const container=get('reacher.app.comp.container/comp-container');
let removed=0;
function simplify(n){
  if(!Array.isArray(n))return n;
  if(n[0]==='.merge'&&n.length===2){assert.deepEqual(n,['.merge','ui/input']);removed++;return 'ui/input';}
  return n.map(simplify);
}
container.code=simplify(container.code);assert.equal(removed,1);
const operations=expected.filter((d,i)=>JSON.stringify(d.code)!==JSON.stringify(before[i].code)).map(d=>['edit','def',d.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(d.code)]);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All62views:reviewed18sites/5callbackcontracts/Tagstringmapper;publicschema/FFI/2tests/HUD/Reactsetteridentity/restore-before-watch/protocol unchanged');
assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
