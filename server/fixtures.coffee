if Locations.find().count() is 0
  Locations.insert
    "name": "Central",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Mid-level",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "The Peak",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Sai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Sheung Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Causeway Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Chai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "North Point",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Quarry Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Sai Wan Ho",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Shau Kei Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Siu Sai Wan",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Aberdeen",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Ap Lei Chau",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Chung Hom Kok",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Cyberport",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Chung Hom Kok",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Deep Water Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Pok Fu Lam",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Repulse Bay",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Stanley",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Shek O",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Tai Tam",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Wong Chuk Hang",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Wan Chai",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Happy Valley",
    "area": "Hong Kong Island"
  Locations.insert
    "name": "Tai Hang",
    "area": "Hong Kong Island"

if Presents.find().count() is 0

  Presents.insert
    location: 'Central'
    title: 'Wine'
    description: 'Cabernet Sauvignon'
    price: 'HKD 400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/wine1.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

  Presents.insert
    location: 'The Peak'
    title: 'Strawberries'
    description: 'A box of strawberries'
    price: 'HKD 100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/strawberries.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

  Presents.insert
    location: 'Mid-level'
    title: 'Chocolate'
    description: 'Aguis Chocolate'
    price: 'HKD 400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/choco2.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

  Presents.insert
    location: 'Sai Wan'
    title: 'Strawberry Suits'
    description: 'Strawberries like a sir!'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present5.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

  Presents.insert
    location: 'Sheung Wan'
    title: 'Basket of Fruit'
    description: 'Sheung Wan tossed'
    price: 'HKD 100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present6.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

  Presents.insert
    location: 'Causeway Bay'
    title: 'Pink Zaku'
    description: 'Perfect for mecha girls'
    price: 'HKD 400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present7.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

  Presents.insert
    location: 'Cyberport'
    title: 'Ring'
    description: 'Ring Mabelle'
    price: 'HKD 1400'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring3.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

if Dinners.find().count() is 0

  Dinners.insert
    location: 'Central'
    title: 'Delaney Restaurant'
    description: 'Romantic dinner'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

  Dinners.insert
    location: 'The Peak'
    title: 'Eat at the Top'
    description: 'Get high for dinner'
    price: 'HKD 1100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant4.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

  Dinners.insert
    location: 'Mid-level'
    title: 'Paisano Pizza'
    description: 'Huge pizza'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2+logo.png'

  Dinners.insert
    location: 'Sai Wan'
    title: 'Victor Lin Poultry'
    description: 'You will find no chicken unbitten here'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant5.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2+logo.png'

  Dinners.insert
    location: 'Sheung Wan'
    title: 'K-Roll'
    description: 'Korean burritos'
    price: 'HKD 100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant6.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: 'Causeway Bay'
    title: 'Shelter'
    description: 'Skybar for two'
    price: 'HKD 1200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant7.JPG'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: 'Cyberport'
    title: 'The Globe'
    description: 'Romantic Bar for two'
    price: 'HKD 1200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

if Flowers.find().count() is 0

  Flowers.insert
    location: 'Central'
    title: 'Rose'
    description: 'Red color'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Flowers.insert
    location: 'The Peak'
    title: 'Mountain Flower'
    description: 'Consume the essence of eternal beauty'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower4.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Flowers.insert
    location: 'Mid-level'
    title: 'Bouvardia'
    description: 'Smell like sweet perfume'
    price: 'HKD 700'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2.jpeg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2+logo.png'

  Flowers.insert
    location: 'Sai Wan'
    title: 'Vetter Flowers'
    description: 'One whiff to desire less'
    price: 'HKD 700'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower5.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2+logo.png'

  Flowers.insert
    location: 'Sheung Wan'
    title: 'Flower Crown'
    description: 'Your majesty'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower6.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'

  Flowers.insert
    location: 'Causeway Bay'
    title: 'Flower Panda'
    description: 'The best of both worlds'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower7.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Flowers.insert
    location: 'Cyberport'
    title: 'Lavendar'
    description: 'Twilight mixed flower'
    price: 'HKD 500'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'
