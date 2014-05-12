Template.editRecommendation.rendered = ->
  Meteor.call 'getRecommendationsInfo', (error, data) ->
    Session.set 'recommendations', data
    targetUser = Session.get 'targetUser'
    user = if targetUser
      _.findWhere data, {targetId: targetUser}
    else
      data[0]
    Session.set 'currentRecommendation', user
    Session.set 'currentIndex', data.indexOf user

Template.editRecommendation.helpers

  currentRecommendation: ->
    Session.get 'currentRecommendation'

Template.editRecommendation.events
  'click #prev': (e) ->
    currentIndex = Session.get 'currentIndex'
    recommendationsLength = Session.get('recommendations').length
    if currentIndex == 0
      Session.set 'currentIndex', recommendationsLength - 1
    else
      Session.set 'currentIndex', currentIndex - 1
    Session.set 'currentRecommendation', Session.get('recommendations')[Session.get 'currentIndex']

  'click #next': (e) ->
    currentIndex = Session.get 'currentIndex'
    recommendationsLength = Session.get('recommendations').length
    if currentIndex == recommendationsLength - 1
      Session.set 'currentIndex', 0
    else
      Session.set 'currentIndex', currentIndex + 1
    Session.set 'currentRecommendation', Session.get('recommendations')[Session.get 'currentIndex']
