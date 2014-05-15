Template.signup.events
  'click input[type=submit]': (event) ->
    event.preventDefault()
    email = $('#email').val()
    password = $('#password').val()
    if !email || !password
      throwError 'Please fill in all fields'
      false
    Accounts.createUser
      email: email
      password: password
    , (err) ->
      if err
        console.log(err)
      else
        Router.go '/'

  'click #signin': ->
    Router.go 'signin'

  'click .facebook-button': ->
    Meteor.loginWithFacebook
      requestPermissions: ['email', 'user_friends']
    , ->
      Router.go 'friends'