Meteor.subscribe 'recommendations'

Template.recommendationsList.helpers recommendations: ->
  Recommendations.find()