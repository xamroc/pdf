Template.dinner.events
  'click .dinnerList': (e) ->
    e.preventDefault()

    Dinners.find().fetch()[0]
    dinId= @_id
    console.log dinId

    recId = Recommendations.find().fetch()[0]

    Recommendations.update {_id: recId._id}, {$set: {"dinnerId": dinId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Dinner updated!'