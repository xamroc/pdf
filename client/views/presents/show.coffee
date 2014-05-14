Template.showPresent.helpers
  location: ->
    Locations.findOne(@location).name

Template.showPresent.events
  'click .presentList': (e) ->
    e.preventDefault()

    Presents.findOne()
    presentId= @_id

    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}

    Recommendations.update currentRecommendation._id, {$set: {"presentId": presentId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Present updated!'


