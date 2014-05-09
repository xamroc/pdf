Meteor.publish "recommendations", ->
  Recommendations.find()

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

Meteor.publish "locations", ->
  Locations.find()