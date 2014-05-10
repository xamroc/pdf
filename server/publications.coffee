Meteor.publish "recommendations", ->
  Recommendations.find()

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

<<<<<<< HEAD
Meteor.publish "friends", ->
  if @userId
    friendList = Meteor.users.findOne(@userId).profile.friendList
    if friendList
      friendsCursor = Meteor.users.find({_id: {$in: friendList}}, {fields: {services: 0}})
=======
Meteor.publish "locations", ->
  Locations.find()
>>>>>>> 0944381c1ae56da619563fa4cad47d55dace84a3
