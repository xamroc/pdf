loadIsotopes = (ids) ->
  _.each ids, (id) ->
    $(id).imagesLoaded ->
      $(id).isotope
        itemSelector: '.recommendation-item'

destroyIsotopes = (ids) ->
  _.each ids, (id) ->
    $(id).isotope 'destroy'

resetIsotopes = (ids) ->
  destroyIsotopes(ids)
  loadIsotopes(ids)

# Section of Marco's Code

currentRecommendation = ->
  targetUser = Session.get 'targetUser'
  Recommendations.findOne targetId: targetUser

randomRecommendation = (collection, locationId) ->
  if !!locationId
    index = _.random 0, collection.find(location: locationId).count() - 1
    collection.find(location: locationId).fetch()[index]
  else
    index = _.random 0, collection.find().count() - 1
    collection.find().fetch()[index]

generateRecommendation = (recommendationId, locationId) ->
  dinner = randomRecommendation Dinners, locationId
  anything = randomRecommendation Anythings, locationId
  present = randomRecommendation Presents, locationId

  Recommendations.update _id: recommendationId, {$set: { dinnerId: dinner._id, anythingId: anything._id, presentId: present._id }}

Template.editRecommendation.rendered = ->
  targetUser = Session.get 'targetUser'
  if targetUser
    recommendations = Recommendations.find().fetch()
    recommendation = _.findWhere recommendations, {targetId: targetUser}
    Session.set 'currentIndex', recommendations.indexOf recommendation
  else
    Session.set 'currentIndex', 0
    Session.set 'targetUser', Recommendations.findOne().targetId

  loadIsotopes(['#presents', '#dinners', '#anythings'])

  $('a[data-toggle="tab"]').on 'shown.bs.tab', (e) ->
    loadIsotopes(['#presents', '#dinners', '#anythings'])

  datingTarget = $('#dating-target').hammer
    gesture: true

  datingTarget.on 'swipeleft', (e) ->
    changeDatingTarget 'prev'

  datingTarget.on 'swiperight', (e) ->
    changeDatingTarget 'next'

Template.editRecommendation.helpers

  targetUser: ->
    targetUser = Session.get 'targetUser'
    Meteor.users.findOne(targetUser)

  locations: ->
    Locations.find()

  recommendations: ->
    Recommendations.find()

  chosenPresent: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.presentId
        Presents.findOne recommendation.presentId
    else
      Presents.findOne()


  chosenDinner: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.dinnerId
        Dinners.findOne recommendation.dinnerId
    else
      Dinners.findOne()

  chosenAnything: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.anythingId
        Anythings.findOne recommendation.anythingId
    else
      Anythings.findOne()

  allPresents: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Presents.find location: recommendation.locationId
      else
        Presents.find()

  allDinners: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Dinners.find location: recommendation.locationId
      else
        Dinners.find()

  allAnythings: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Anythings.find location: recommendation.locationId
      else
        Anythings.find()

  showPrevNext: ->
    if Recommendations.find().count() < 2
      false
    else
      true

Template.location.helpers
  selected: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId && recommendation.locationId == @_id
        'selected'

# until here.

changeDatingTarget = (direction) ->
  currentIndex = Session.get 'currentIndex'
  lastIndex = Recommendations.find().count() - 1
  if direction == 'prev'
    if currentIndex == 0
      Session.set 'currentIndex', lastIndex
    else
      Session.set 'currentIndex', currentIndex - 1
  else
    if currentIndex == lastIndex
      Session.set 'currentIndex', 0
    else
      Session.set 'currentIndex', currentIndex + 1
  Session.set 'targetUser', Recommendations.find().fetch()[Session.get 'currentIndex'].targetId
  resetIsotopes ['#presents', '#dinners', '#anythings']

Template.editRecommendation.events
  'click #prev': (e) ->
    changeDatingTarget 'prev'
  'click #next': (e) ->
    changeDatingTarget 'next'
  'click .recommendation-item': (e) ->
    e.preventDefault()
    unless $(e.target).context.nodeName == 'BUTTON' or $(e.target).context.parentNode.nodeName == 'BUTTON'
      $("##{@_id}").modal 'show'

  'change #location': (e) ->
    recommendationId = currentRecommendation()._id
    Recommendations.update _id: recommendationId, {$set: {locationId: $(e.target).val()}}, (error, result) ->
      if error
        console.log 'error: ', error

    locationId = Recommendations.findOne({targetId: Session.get 'targetUser'}).locationId
    generateRecommendation recommendationId, locationId
    destroyIsotopes ['#presents', '#dinners', '#anythings']
    loadIsotopes ['#presents', '#dinners', '#anythings']

