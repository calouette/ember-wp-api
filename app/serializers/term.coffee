`import DS from 'ember-data';
import WordpressSerializerMixin from 'ember-wp-api/mixins/wordpress-serializer'`

TermSerializer = DS.RESTSerializer.extend DS.EmbeddedRecordsMixin, WordpressSerializerMixin,
 attrs:
  parent:
   embedded: 'always'
   
 extractArray: (store, type, payload) ->
  payload =
   terms: payload   
  @._super(store, type, payload)
   
 extractSingle: (store, type, payload, id) -> 
  payload = 
   term: payload
  @_super store, type, payload, id
  
`export default TermSerializer`
