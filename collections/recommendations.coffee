@Recommendations = new Meteor.Collection("recommendations")

Recommendations.allow
  insert: (userId, doc) ->
    userId == Meteor.userId()
  update: (userId, doc, fields, modifier) ->
    true

Meteor.methods
  getRecommendationsInfo: ->
    recommendations = []
    Recommendations.find().forEach (recommendation) ->
      recommendation.target = Meteor.users.findOne recommendation.targetId
      if recommendation.presentId
        recommendation.present = Presents.findOne recommendation.presentId
      if recommendation.flowerId
        recommendation.flower = Flowers.findOne recommendation.flowerId
      if recommendation.dinnerId
        recommendation.dinner = Dinners.findOne recommendation.dinnerId
      recommendations.push recommendation
    recommendations