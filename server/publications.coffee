Meteor.publish "recommendations", ->
  Recommendations.find()

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

Meteor.publish "friends", ->
  currentUserQuery = Meteor.users.find(id: @userId)
  console.log 'currentUserId: ', @userId
  currentUserQuery.observe ->
    added: (doc) ->
      console.log 'added doc', doc
      console.log 'friendList: ', friendList = Meteor.users.findOne(@userId).profile.friendList
      # if friendList
      #   friendsCursor = Meteor.users.find({_id: {$in: friendList}}, {fields: {services: 0}})

    removed: (oldDoc) ->
      console.log 'removed doc', oldDoc

  if @userId
    friendList = Meteor.users.findOne(@userId).profile.friendList
    if friendList
      friendsCursor = Meteor.users.find({_id: {$in: friendList}}, {fields: {services: 0}})