Template.showRecommendation.helpers
  target: ->
    Meteor.users.findOne(@targetId)

Template.showRecommendation.events
  'click .target-name': (e) ->
    e.preventDefault()
    Session.set 'targetUser', $(@)[0].targetId
    Router.go 'editRecommendation'

  'click .remove-recommendation': (e) ->
    e.preventDefault()
    targetId = @targetId
    Recommendations.remove @_id, (error, result) ->
      if error
        console.log error
      else
        friendList = Meteor.user().profile.friendList
        friendList.push targetId
        throwError 'Deleted date'
        Meteor.users.update Meteor.user()._id, $set: { "profile.friendList": friendList }