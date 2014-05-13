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
        if Recommendations.find().count() is 0
          @redirect '/'
          throwError 'Please add friends to date list'

Router.onBeforeAction 'loading'
Router.onBeforeAction -> clearErrors()