Template.present.events
  'click .presentList': (e) ->
    e.preventDefault()

    Presents.find().fetch()[0]
    preId= @._id
    console.log preId

    recId = Recommendations.find().fetch()[0]

    Recommendations.update {_id: recId._id}, {$set: {"presentId": preId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Present updated!'


