# Marco's Code

Template.showRecommendation.helpers
  target: ->
    Meteor.users.findOne(@targetId)

Template.showRecommendation.events
  'click .target': (e) ->
    e.preventDefault()
    Session.set 'targetUser', $(@)[0].targetId
    Router.go 'editRecommendation'

# until here.

  'click .remove-recommendation': (e) ->
    e.preventDefault()
    targetId = @targetId
    Recommendations.remove @_id, (error, result) ->
      if error
        console.log error
      else
        friendList = Meteor.user().profile.friendList
        friendList.push targetId
        throwError 'Aww, what happened dear? Anyway, deleted date successfully!'
        Meteor.users.update Meteor.user()._id, $set: { "profile.friendList": friendList }