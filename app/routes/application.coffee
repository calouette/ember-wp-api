`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
 beforeModel: ->
  @store.find 'term'
  
 model: ->
  (@store.all 'term').filterBy('parent.id', null)

`export default ApplicationRoute`
