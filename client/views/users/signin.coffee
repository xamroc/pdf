Template.signin.events
  'click input[type=submit]': (event) ->
    event.preventDefault()
    username = $('#username').val()
    password = $('#password').val()
    Meteor.loginWithPassword username, password, (err) ->
      if err
        console.log err
        throwError err.reason

  'click #signup': ->
    Router.go '/signup'

  'click .facebook-button': ->
    Meteor.loginWithFacebook ->
      Router.go '/'