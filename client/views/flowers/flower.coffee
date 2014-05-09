Template.flower.events
  'click .flowerList': (e) ->
    e.preventDefault()

    Flowers.find().fetch()[0]
    floId= @_id
    console.log floId

    recId = Recommendations.find().fetch()[0]

    Recommendations.update {_id: recId._id}, {$set: {"flowerId": floId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Flower updated!'
