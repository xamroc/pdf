Deps.autorun ->
  if Meteor.user()
    console.log 'logged in'
    for friend in Meteor.users.find(_id: {$ne: Meteor.userId()}).fetch()
      Friends.insert friend
  else
    console.log 'logged out'
    Friends.remove {}

Template.main.settings =
  position: 'bottom'
  limit: 10
  rules: [{
    collection: Friends
    field: 'profile.name'
    matchAll: true
    template: Template.friends
  }]