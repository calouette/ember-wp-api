`import Ember from 'ember';
import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map -> 
 @resource 'term', {path: '/:term_id'}, ->
  @resource 'subterm', {path: '/:subterm_id'}, ->
   @route 'post', {path: '/:post_id'}  

`export default Router`
