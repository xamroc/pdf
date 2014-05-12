Template.recommendationItem.helpers
  target: ->
    Meteor.users.findOne(@targetId)

  # present: ->
  #   Presents.findOne(@presentId)
  # dinner: ->
  #   Dinners.findOne(@dinnerId)
  # flower: ->
  #   Flowers.findOne(@flowerId)

Template.recommendationItem.events
  'click .activeuser': (e) ->
    e.preventDefault()

    Recommendations.findOne()
    recId = @._id



