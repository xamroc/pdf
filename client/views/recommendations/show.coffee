Template.showRecommendation.helpers
  target: ->
    Meteor.users.findOne(@targetId)

  # present: ->
  #   Presents.findOne(@presentId)
  # dinner: ->
  #   Dinners.findOne(@dinnerId)
  # flower: ->
  #   Flowers.findOne(@flowerId)

Template.showRecommendation.events
  'click .activeuser': (e) ->
    e.preventDefault()

    Recommendations.findOne()
    recId = @._id