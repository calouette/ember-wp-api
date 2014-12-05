`import DS from 'ember-data';
import WordpressSerializerMixin from 'ember-wp-api/mixins/wordpress-serializer'`

PostSerializer = DS.RESTSerializer.extend WordpressSerializerMixin,
  
 attrs:
  categories:
   embedded: 'always'
   
 extractArray: (store, type, payload) ->
  extracted = []
  data = {}
  root = 'posts'

  payload.forEach (post, i) ->
   extracted.push post
   post.categories = []
   post.links =
    comments: "comments"

   if typeof post.terms.category isnt "undefined"
    post.terms.category.forEach (category, j) ->
     post.categories.push category	 
     return
   return

  data[root] = extracted  
  @._super(store, type, data);

 extractSingle: (store, type, payload, id) ->
  payload.categories = []
  payload.links =
    comments: "comments"
	
  if typeof payload.terms.category isnt "undefined"
   payload.terms.category.forEach (category, j) ->
    payload.categories.push category
    return

  payload = 
   post: payload

  @_super store, type, payload, id

`export default PostSerializer`
	