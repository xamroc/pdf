Accounts.onCreateUser (options, user) ->
  if options.profile
    options.profile.picture = "http://graph.facebook.com/" + user.services.facebook.id + "/picture/?type=large"
    user.profile = options.profile
    user

Accounts.onLogin (data) ->
  Meteor.call 'updateFriendsList', data.user, (error, result) ->
    Meteor.users.update data.user._id, $set: { "profile.friendList": result }