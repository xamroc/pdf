Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: () ->
    Meteor.subscribe 'recommendations'
    Meteor.subscribe 'presents'
    Meteor.subscribe 'dinners'
    Meteor.subscribe 'flowers'
    Meteor.subscribe 'locations'

Router.map ->
  @route 'main',
    path: '/'

  @route 'editRecommendation',
    path: '/recommendations'
    onBeforeAction: ->
      if @ready()
        @redirect '/' if Recommendations.find().count() is 0

Router.onBeforeAction 'loading'