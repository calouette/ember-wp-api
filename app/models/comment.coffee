`import DS from 'ember-data'`

Comment = DS.Model.extend
 post: DS.belongsTo 'post',  {inverse: 'comments'}
 content: DS.attr 'string'
 status: DS.attr 'string'
 type: DS.attr 'string'
 parent: DS.attr 'string'
 author: DS.attr 'string'
 date: DS.attr 'date'
 date_tz: DS.attr 'string'
 date_gmt: DS.attr 'date'
 meta: DS.attr 'string'

`export default Comment`