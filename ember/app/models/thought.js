import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  body: DS.attr('string'),
  author: DS.attr('string', {defaultValue: 'me'}),
  postedDate: DS.attr('date', {
    defaultValue() { return new Date(); }
  })
});
