
Template.anything.events
  'click .anythingList': (e) ->
    e.preventDefault()

    Anythings.findOne()
    anythingId= @_id

    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}

    Recommendations.update currentRecommendation._id, {$set: {"anythingId": anythingId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'anything updated!'
