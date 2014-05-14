Template.forgot_password.events
  'click input[type=submit]': (e) ->
    e.preventDefault()
    options =
      email: $('#email').val()
    console.log 'options', options
    unless options.email
      throwError 'Please provide email address'
    Accounts.forgotPassword options, (error) ->
      if error
        console.log error
      else
        throwError "Password reset link sent!"