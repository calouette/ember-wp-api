`import Ember from 'ember'`
`import WordpressSerializerMixin from 'ember-wp-api/mixins/wordpress-serializer'`

module 'WordpressSerializerMixin'

# Replace this with your real tests.
test 'it works', ->
  WordpressSerializerObject = Ember.Object.extend WordpressSerializerMixin
  subject = WordpressSerializerObject.create()
  ok subject
