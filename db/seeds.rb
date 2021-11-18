# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'
User.destroy_all
Article.destroy_all

puts 'Creating 3 fake users...'
user = User.create!(email: 'lauriane@wagon.com', password: 'secret')
user.photo.attach(io: URI.open('https://thispersondoesnotexist.com/image'), filename: 'file.png', content_type: 'image/png')
user.save!
user = User.create!(email: 'perrine@wagon.com', password: 'azerty')
user.photo.attach(io: URI.open('https://thispersondoesnotexist.com/image'), filename: 'file.png', content_type: 'image/png')
user.save!
user = User.create!(email: 'ahmed@wagon.com', password: '123456')
user.photo.attach(io: URI.open('https://thispersondoesnotexist.com/image'), filename: 'file.png', content_type: 'image/png')
user.save!

puts 'Creating 16 fake articles...'

article = Article.create!(
  name: 'Boléro',
  description: 'Celui de Maurice Ravel. En superbe état, affaire à ne pas manquer.',
  price: 42,
  category: 'VESTE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://images1.vinted.net/t/01_012db_JwbXR9fbYciGSrbotocm9W2L/f800/1599320524.jpeg?s=23d4c97c4e731d04bf4cf5abdf3dcfd165c6df67'), filename: 'file.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: "Cape d'invisibilité",
  description: "Jamais portée. Ou du moins, personne ne m'a jamais vu avec... 🧙‍♀️",
  price: 150,
  category: 'CAPE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2019/10/0bd0e059-cd51-4db7-af27-e705420ac52d/1200x680_harry_potter.jpg'), filename: 'file.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Sac à main en cuir',
  description: 'Un puits sans fond. Mary Poppins serait jalouse.',
  price: 20,
  category: 'SAC À MAIN',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://images.unsplash.com/photo-1536891648359-888e3aa968f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=688&q=80'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Veste en fourrure',
  description: '/!\ Avant de la réserver, assurez-vous de courir vite lorsque vous voyez L214 arriver au loin.',
  price: 90,
  category: 'VESTE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://i.etsystatic.com/7089293/r/il/474ed8/1604874439/il_570xN.1604874439_2etu.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Chaussette de Dobby',
  description: 'Chaussette orpheline. Pointure elfe (correspond à une pointure 32 environ).',
  price: 3,
  category: 'CHAUSSETTE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://image.smythstoys.com/zoom/198343_3.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Chemise noire',
  description: 'Camisa negra en espagnol. Trouvée en fripe à Barcelone, elle appartiendrait à Juanes en personne.',
  price: 15,
  category: 'CHEMISE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://i.ebayimg.com/images/g/9QMAAOSwqMteB9HN/s-l300.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Pantacourt kaki',
  description: 'De nouveau à la pointe de la mode pour la prochaine saison Printemps/Eté 2022. Soyez précurseur, réservez-le !',
  price: 12,
  category: 'PANTACOURT',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://cdn.shopify.com/s/files/1/0267/4049/0349/products/ph60_500ef67f-f6ba-47cd-b43e-576b9eb5cca6.jpg?v=1593074639'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Kilt écossais',
  description: 'Véritable kilt en tartan de laine. Que porter en-dessous ? ça depend caleçons vos goûts.......',
  price: 17,
  category: 'KILT',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://images.unsplash.com/photo-1582974878239-f6713802a0df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=735&q=80'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Veste bleue',
  description: "Portée quelques fois jusqu'au jour où j'ai décidé de la retourner.",
  price: 30,
  category: 'VESTE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://ratplaligne.fr/356-large_default/veste-esprit-vintage-bleue-logo-ratp-1976.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Charentaises traditionnelles',
  description: 'Idéales pour rester pépère au coin du feu. Taillent correctement.',
  price: 25,
  category: 'PANTOUFLE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://empereur.fr/eshop/5314/chaussons-charentaises-traditionnels-ecossais.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Kimono',
  description: 'Parfait si vous êtes prêt à en découdre au dojo !!!',
  price: 19,
  category: 'KIMONO',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://i.etsystatic.com/8040606/r/il/41ea1e/1766911581/il_fullxfull.1766911581_qyf4.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Chapeau melon',
  description: 'Taille petit. Ne pas avoir la grosse tête si vous souhaitez le réserver.',
  price: 13,
  category: 'CHAPEAU',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://images1.vinted.net/t/01_02257_KKg32E6jabVqC2RimY61AQMo/f800/1600396747.jpeg?s=3b78039bd0eea1c4ee3fa6f9ce3348fe6b27e9f9'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Lot de deux chemises',
  description: 'Pour vous et la personne avec qui vous êtes cul et chemise.',
  price: 40,
  category: 'CHEMISE',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://i.ebayimg.com/images/g/t0EAAOSwuLZY47mT/s-l300.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Gants peau de mouton',
  description: "À mettre avant d'annoncer une mauvaise nouvelle. Tiennent très chaud. Mouton véritable (mais ne bêle plus).",
  price: 15,
  category: 'GANT',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://www.atelierdugantier.fr/3002-large_default/le-mouton-retourne-homme.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Baskets vintage',
  description: 'On y est bien (dans ses baskets). Taillent petit.',
  price: 50,
  category: 'BASKET',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://images1.vinted.net/t/01_01505_z9Zt3zeuVvcvBV9Cw2L2NUFY/f800/1601512023.jpeg?s=f5d7ed06b2c0cd56cd35fa87a0c16f4421c68549'), filename: 'clothe.png', content_type: 'image/png')
article.save!

article = Article.create!(
  name: 'Chapeau de paille',
  description: 'Ce chapeau se transmet de pirate en pirate. Confère de nombreux pouvoirs. Affaire à ne pas manquer !',
  price: 13,
  category: 'CHAPEAU',
  user: User.all.sample
)
article.photos.attach(io: URI.open('https://www.cdiscount.com/pdt2/0/2/6/1/700x700/aby3700789280026/rw/figurine-one-piece-chapeau-de-paille-tail.jpg'), filename: 'clothe.png', content_type: 'image/png')
article.save!

puts 'Seed finished! 🌱'
