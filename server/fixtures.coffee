if Recommendations.find().count() is 0

  wineId = Presents.insert
    location: 'Central'
    title: 'Wine'
    description: 'Cabernet Sauvignon'
    price: 'HKD 400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  chocoId = Presents.insert
    location: 'Admiralty'
    title: 'Chocolate'
    description: 'Aguis Chocolate'
    price: 'HKD 400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  ringId = Presents.insert
    location: 'Cyberport'
    title: 'Ring'
    description: 'Ring Mabelle'
    price: 'HKD 1400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  delaneyId = Dinners.insert
    locationId: 'Central'
    title: 'Delaney Restaurant'
    description: 'Romantic dinner'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  pizzaId = Dinners.insert
    locationId: 'Admiralty'
    title: 'Paisano Pizza'
    description: 'Huge pizza'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  globeId = Dinners.insert
    locationId: 'Cyberport'
    title: 'The Globe'
    description: 'Romantic Bar for two'
    price: 'HKD 1200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  roseId = Flowers.insert
    locationId: 'Central'
    title: 'Rose'
    description: 'Red color'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  bouId = Flowers.insert
    locationId: 'Admiralty'
    title: 'Bouvardia'
    description: 'Smell like sweet perfume'
    price: 'HKD 700'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  lavId = Flowers.insert
    locationId: 'Cyberport'
    title: 'Lavendar'
    description: 'Twilight mixed flower'
    price: 'HKD 500'
    vendor: 'Vendor'
    phonenumber: '1278 7897'

  rec1Id = Recommendations.insert
    name: "Rec for User 1"
    presentId: wineId
    dinnerId: delaneyId
    flowerId: roseId

  rec2Id = Recommendations.insert
    name: "Rec for User 2"
    presentId: chocoId
    dinnerId: pizzaId
    flowerId: bouId

  rec3Id = Recommendations.insert
    name: "Rec for User 3"
    presentId: ringId
    dinnerId: globeId
    flowerId: lavId