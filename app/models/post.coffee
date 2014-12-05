`import DS from 'ember-data'`

Post = DS.Model.extend
 slug: DS.attr 'string'
 title: DS.attr 'string'
 content: DS.attr 'string'
 excerpt: DS.attr 'string'
 date: DS.attr 'date'
 categories: DS.hasMany 'term'
 comments: DS.hasMany 'comment',  {inverse: 'post', async: true}
 
 status: DS.attr()
 type: DS.attr()
 author: DS.attr()
 parent: DS.attr()
 link: DS.attr()
 modified: DS.attr()
 format: DS.attr()
 guid: DS.attr()
 menu_order: DS.attr()
 comment_status: DS.attr()
 ping_status: DS.attr()
 sticky: DS.attr()
 date_tz: DS.attr()
 date_gmt: DS.attr()
 modified_tz: DS.attr()
 modified_gmt: DS.attr()
 meta: DS.attr()
 featured_image: DS.attr()
 terms: DS.attr()
 
 firstSub: (->
  found = false
  @get('categories').forEach (category, i) ->
   if found is false and category.get('parent') isnt null
    found = category
    return
  found
 ).property('categories.@each')
  
`export default Post`
