Meteor.publish "recommendations", ->
  Recommendations.find()

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

Meteor.publish "friends", ->
  if @userId
    friendList = Meteor.users.findOne(@userId).profile.friendList
    if friendList
      friendsCursor = Meteor.users.find({_id: {$in: friendList}}, {fields: {services: 0}})