`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'route:term/index', 'TermIndexRoute', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', ->
  route = @subject()
  ok route
