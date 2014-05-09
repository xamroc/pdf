if Locations.find().count() is 0
  Locations.insert
    "id": "1",
    "name": "Central",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "2",
    "name": "Mid-level",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "3",
    "name": "The Peak",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "4",
    "name": "Sai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "5",
    "name": "Sheung Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "6",
    "name": "Causeway Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "7",
    "name": "Chai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "8",
    "name": "North Point",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "9",
    "name": "Quarry Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "10",
    "name": "Sai Wan Ho",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "11",
    "name": "Shau Kei Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "12",
    "name": "Siu Sai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "12",
    "name": "Aberdeen",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "13",
    "name": "Ap Lei Chau",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "14",
    "name": "Chung Hom Kok",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "15",
    "name": "Cyberport",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "16",
    "name": "Chung Hom Kok",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "17",
    "name": "Deep Water Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "18",
    "name": "Pok Fu Lam",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "19",
    "name": "Repulse Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "20",
    "name": "Stanley",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "21",
    "name": "Shek O",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "22",
    "name": "Tai Tam",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "23",
    "name": "Wong Chuk Hang",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "24",
    "name": "Wan Chai",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "25",
    "name": "Happy Valley",
    "area": "Hong Kong Island"
  Locations.insert
    "id": "26",
    "name": "Tai Hang",
    "area": "Hong Kong Island"

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