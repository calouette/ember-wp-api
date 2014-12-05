`import Ember from 'ember'`

SubtermRoute = Ember.Route.extend

 beforeModel: (transition, params) -> 
  id = transition.params.subterm.subterm_id  
  if id isnt undefined  
   existing = !!((@store.all 'term').filterBy('slug', id).get('length'))
   @transitionTo 'term.post', id if not existing   
  return
  
 model: (params) ->
  (@store.all 'term').filterBy('slug', params.subterm_id).get 'firstObject'
 
 afterModel: (model) ->  
  @store.find 'post', {filter: {cat: model.get 'id'}}

`export default SubtermRoute`
