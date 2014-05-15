Template.signin.events
  'click input[type=submit]': (event) ->
    event.preventDefault()
    email = $('#email').val()
    password = $('#password').val()
    Meteor.loginWithPassword email, password, (err) ->
      if err
        console.log err
        throwError err.reason
      Router.go 'friends'

  'click #signup': ->
    Router.go '/signup'

  'click .facebook-button': ->
    Meteor.loginWithFacebook
      requestPermissions: ['email', 'user_friends']
    , ->
      Router.go 'friends'