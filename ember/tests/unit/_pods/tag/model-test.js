import { moduleForModel, test } from 'ember-qunit';

moduleForModel('tag', 'Unit | Model | tag', {
  // Specify the other units that are required for this test.
  needs: ['model:project']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
