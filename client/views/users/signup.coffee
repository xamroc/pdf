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
      requestPermissions: ['email', 'user_friends', 'user_location', 'user_events',
          'friends_events', 'friends_location', 'friends_about_me',
          'user_status', 'friends_status', 'read_friendlists']
    , ->
      Router.go 'friends'