Meteor.call 'getRecommendationsInfo', (error, data) ->
  Session.set 'recommendations', data
  Session.set 'currentRecommendation', data[0]
  Session.set 'currentIndex', 0

Template.editRecommendation.helpers
  currentRecommendation: ->
    Session.get 'currentRecommendation'

  presents: ->
    Presents.find recommendationId: @_id

  dinners: ->
    Dinners.find recommendationId: @_id

  flowers: ->
    Flowers.find recommendationId: @_id

  allPresents: ->
    Presents.find()

  allDinners: ->
    Dinners.find()

  allFlowers: ->
    Flowers.find()

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
