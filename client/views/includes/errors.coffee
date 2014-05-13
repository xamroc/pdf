Template.errors.helpers
  errors: ->
    Errors.find()

Template.error.rendered = ->
  error = @data
  Meteor.setTimeout ->
    Errors.update error._id, {$set: {seen: true}}
    clearErrors()
  , 3000