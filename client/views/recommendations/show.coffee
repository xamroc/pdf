Template.showRecommendation.helpers
  target: ->
    Meteor.users.findOne(@targetId)

Template.showRecommendation.events
  'click .activeuser': (e) ->
    e.preventDefault()
    Session.set 'targetUser', $(@)[0].targetId
    Router.go 'editRecommendation'