`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend
 host: 'http://localhost'
 namespace: 'wp-json'
  
  
 pathForType: (type) ->
  # Adjust path for terms
  if type is 'category' or type is 'subcategory' or type is 'term'
   'taxonomies/category/terms'
  else
   @._super(type)

`export default ApplicationAdapter`
