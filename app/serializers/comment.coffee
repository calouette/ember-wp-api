`import DS from 'ember-data';
import WordpressSerializerMixin from 'ember-wp-api/mixins/wordpress-serializer'`

CommentSerializer = DS.RESTSerializer.extend WordpressSerializerMixin,
    
 extractArray: (store, type, payload) ->
  payload =
   comments: payload   
  @._super(store, type, payload)

 extractSingle: (store, type, payload, id) ->  
  payload = 
   comment: payload
  @_super store, type, payload, id

`export default CommentSerializer`
