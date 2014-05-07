Template.locationEdit.events
  'submit form': (e) ->
    e.preventDefault()

    locationProperty = $(e.target).find('[name=location]').val()

    console.log locationProperty

    Meteor.users.update {_id: Meteor.userId()}, {$set: {"profile.location": locationProperty}}, (error) ->
      if error
        console.log 'Error!'

      else
        Router.go '/'