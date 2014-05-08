Router.configure
  layoutTemplate: 'layout'

Router.map ->
  @.route 'main', { path: '/' }
  @.route 'recommendationsList', { path: '/recommendations' }
