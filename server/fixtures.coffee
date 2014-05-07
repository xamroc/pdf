if Recommendations.find().count() is 0

  rec1Id = Recommendations.insert
    name: "Rec for User 1"

  rec2Id = Recommendations.insert
    name: "Rec for User 2"

  rec3Id = Recommendations.insert
    name: "Rec for User 3"

  Presents.insert
    recommendationId: rec1Id
    location: 'Central'
    title: 'Wine'
    description: 'Cabernet Sauvignon'
    price: 'HKD 400'

  Presents.insert
    recommendationId: rec2Id
    location: 'Admiralty'
    title: 'Chocolate'
    description: 'Aguis Chocolate'
    price: 'HKD 400'

  Presents.insert
    recommendationId: rec3Id
    location: 'Cyberport'
    title: 'Ring'
    description: 'Ring Mabelle'
    price: 'HKD 1400'

  Dinners.insert
    recommendationId: rec1Id
    locationId: 'Central'
    title: 'Delaney Restaurant'
    description: 'Romantic dinner'
    price: 'HKD 600'

  Dinners.insert
    recommendationId: rec2Id
    locationId: 'Admiralty'
    title: 'Paisano Pizza'
    description: 'Huge pizza'
    price: 'HKD 200'

  Dinners.insert
    recommendationId: rec3Id
    locationId: 'Cyberport'
    title: 'The Globe'
    description: 'Romantic Bar for two'
    price: 'HKD 1200'

  Flowers.insert
    recommendationId: rec1Id
    locationId: 'Central'
    title: 'Rose'
    description: 'Red color'
    price: 'HKD 300'

  Flowers.insert
    recommendationId: rec2Id
    locationId: 'Admiralty'
    title: 'Bouvardia'
    description: 'Smell like sweet perfume'
    price: 'HKD 700'

  Flowers.insert
    recommendationId: rec3Id
    locationId: 'Cyberport'
    title: 'Lavendar'
    description: 'Twilight mixed flower'
    price: 'HKD 500'