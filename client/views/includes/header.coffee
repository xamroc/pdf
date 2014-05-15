Template.header.events
  'click #signout': (e) ->
    Meteor.logout()

  'click #nav-signin': (e) ->
    el = document.getElementById 'main'
    el.scrollIntoView true

