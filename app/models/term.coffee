`import DS from 'ember-data'`

Term = DS.Model.extend
 slug: DS.attr 'string'
 name: DS.attr 'string'
 description: DS.attr()
 count: DS.attr()
 link: DS.attr()
 meta: DS.attr()
 parent: DS.belongsTo 'term', {inverse: 'children'}
 children: DS.hasMany 'term', {inverse: 'parent'}
 posts: DS.hasMany 'post'
 
 numOfPosts: ( ->
  if @get('parent.id') isnt null
   @get 'posts.length'
  else
   count = 0
   @get('children').forEach (child, i) ->
    count += child.get('posts.length')
   count
 ).property('parent', 'children.length', 'posts.length')

`export default Term`
