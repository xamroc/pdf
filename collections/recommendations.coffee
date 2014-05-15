@Recommendations = new Meteor.Collection("recommendations")

Recommendations.allow
  insert: (userId, doc) ->
    userId == Meteor.userId()
  update: (userId, doc, fields, modifier) ->
    true
  remove: ->
    true