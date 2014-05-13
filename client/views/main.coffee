Template.main.settings =
  position: 'bottom'
  limit: 10
  rules: [
    collection: 'Meteor.users'
    field: 'profile.name'
    subscription: 'availableFriends'
    matchAll: true
    template: Template.friends
    callback: (doc, element) ->
      friendList = _.without Meteor.user().profile.friendList, doc._id
      Meteor.users.update Meteor.userId(), $set: { "profile.friendList": friendList }
      Recommendations.insert {userId: Meteor.userId(), targetId: doc._id}, ->
        Meteor.subscribe 'recommendations'
      element[0].value = ''
  ]
