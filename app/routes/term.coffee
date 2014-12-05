`import Ember from 'ember'`

TermRoute = Ember.Route.extend
 model: (params) ->
  (@store.all 'term').filterBy('slug', params.term_id).get 'firstObject'

`export default TermRoute`
