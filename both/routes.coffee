preloadSubscriptions = ['recommendations', 'presents', 'dinners', 'flowers', 'locations']

Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  waitOn: ->
    _.map preloadSubscriptions, (sub) ->
      Meteor.subscribe sub

filters =
  isLoggedIn: (pause) ->
    unless (Meteor.loggingIn() || Meteor.user())
      throwError 'Please sign in/up first.'
      @redirect 'signin'
      pause()
  isLoggedOut: (pause) ->
    if Meteor.user()
      throwError 'Already signed in'
      @redirect '/'
      pause()
  hasRecommendations: (pause) ->
    if @ready()
      if Recommendations.find().count() is 0
        @redirect '/'
        throwError 'Please add friends to date list'

Router.onBeforeAction 'loading'
Router.onBeforeAction -> clearErrors()
Router.onBeforeAction filters.isLoggedIn, only: ['friends', 'editRecommendation']
Router.onBeforeAction filters.isLoggedOut, only: ['signin', 'signup']
Router.onBeforeAction filters.hasRecommendations, only: 'editRecommendation'

Router.map ->
  @route 'main',
    path: '/'

  @route 'friends'

  @route 'editRecommendation',
    path: '/recommendations'

  @route 'signin'
  @route 'signup'
  @route 'forgot_password'