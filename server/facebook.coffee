class Facebook
  constructor: (accessToken) ->
    @fb = Meteor.require 'fbgraph'
    @accessToken = accessToken
    @fb.setAccessToken @accessToken
    @options =
      timeout: 3000
      pool:
        maxSockets: Infinity
        headers:
          connection: 'keep-alive'
    @fb.setOptions @options

  query: (query, method) ->
    method = if typeof method is 'undefined'
      'get'
    else
      method
    a = (done) =>
      @fb[method] query, (error, response) ->
        done null, response

    data = Meteor.sync a
    data.result

  getUserData: ->
    @query 'me'

  getFriendsData: ->
    @query '/me/friends'

Meteor.methods
  getUserData: ->
    fb = new Facebook Meteor.user().services.facebook.accessToken
    data = fb.getUserData()

  getFriendsData: ->
    fb = new Facebook Meteor.user().services.facebook.accessToken
    data = fb.getFriendsData()
