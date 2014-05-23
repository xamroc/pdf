# Marco's Code

Meteor.publish "recommendations", ->
  recommendationsCursor = Recommendations.find(userId: @userId)
  datedFriendsIds = recommendationsCursor.fetch().map (recommendation) ->
    recommendation.targetId
  datedFriendsCursor = Meteor.users.find(_id: {$in: datedFriendsIds}, {fields: {services: 0}})
  [recommendationsCursor, datedFriendsCursor]

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish 'anythings', ->
  Anythings.find()

# until here.

Meteor.publish 'availableFriends', (selector, options) ->
  collection = Meteor.users
  sub = this
  options.limit = Math.min(50, Math.abs(options.limit)) if options.limit
  friendList = Meteor.users.findOne(@userId).profile.friendList
  friendOnly = {_id: {$in: friendList}}
  _.extend selector, friendOnly
  handle = collection.find(selector, options).observeChanges
    added: (id, fields) ->
      sub.added('autocompleteRecords', id, fields)
    changed: (id, fields) ->
      sub.changed('autocompleteRecords', id, fields)
    removed: (id) ->
      sub.removed('autocompleteRecords', id)

  sub.ready()
  sub.onStop -> handle.stop()

Meteor.publish "locations", ->
  Locations.find()