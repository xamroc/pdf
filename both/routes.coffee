Router.configure
  layoutTemplate: 'layout'
  waitOn: ->
    [
      Meteor.subscribe("recommendations")
      Meteor.subscribe("present")
    ]

Router.map ->
  @.route 'main', { path: '/' }
  @.route 'recommendationsList', { path: '/recommendations' }
