`import Ember from 'ember'`

TermIndexRoute = Ember.Route.extend
 afterModel: (model) ->
  @store.find 'post', {filter: {cat: model.get 'id'}}

`export default TermIndexRoute`
