Template.dinnerModal.helpers
  location: ->
    Locations.findOne(@location).name

Template.showDinner.events
  'click .add-dinner': (e) ->
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"dinnerId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        $("#alert-dinner").modal 'show'
        Meteor.setTimeout ->
          $("#alert-dinner").modal 'hide'
        , 1000

Template.dinnerModal.events
  'click .add-dinner-modal': (e) ->
    dinnerId = @_id
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"dinnerId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        console.log 'dinnerId', dinnerId
        $("##{dinnerId}").modal 'hide'
        $("#alert-dinner").modal 'show'
        Meteor.setTimeout ->
          $("#alert-dinner").modal 'hide'
        , 1000