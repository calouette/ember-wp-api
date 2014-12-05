`import Ember from 'ember'`

SubtermPostRoute = Ember.Route.extend

 # Will try to to find the post without making a request to the WP-API first
 model: (params) ->
  posts = @store.all('post').filterBy('slug', params.post_id)
  if posts.get('length') >= 1
   posts.get 'firstObject'
  else
   @store.find('post', {filter: {name: params.post_id}}).then (data) ->
    data.get 'firstObject'

 afterModel: (model) ->
  # Request the comments from the WP API once we have the Post model
  model.get 'comments'
  return
	
`export default SubtermPostRoute`
