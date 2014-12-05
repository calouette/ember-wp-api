`import Ember from 'ember';
import DS from 'ember-data';`

WordpressSerializerMixin = Ember.Mixin.create DS.EmbeddedRecordsMixin,
 primaryKey: 'ID'

`export default WordpressSerializerMixin`
