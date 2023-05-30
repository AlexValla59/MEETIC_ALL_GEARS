# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "#####################"
puts ' Cleaning database...'
puts "#####################"
User.destroy_all
Item.destroy_all

user1 = User.create(email: "foucauld@qmail.com", password: "123456", name: "foucauld")
user2 = User.create(email: "alexandre@gmail.com", password: "123456", name: "Alexandre")
user3 = User.create(email: "fx@gmail.com", password: "123456", name: "FX")
user4 = User.create(email: "jane@gmail.com", password: "123456", name: "Jane")
user5 = User.create(email: "phil@gmail.com", password: "123456", name: "phil")


item1 = Item.create(name: 'Sabre Laser rouge', description: 'Voici mon sabre laser rouge,remis en main propre par le Sénateur Palpatine. Il a été un allié important dans ma vie du côté obscure de la Force. Attention, il est coupant', price: '215 €', category: 'armes', univers:'Star Wars', poster_url:"https://cdn2.unrealengine.com/fortnite-darth-vaders-lightsaber-1900x600-fa4602e83bd8.jpg")
item2 = Item.create(name: 'Baguette de Sureau', description: 'Je vous propose la baguette la plus puissante du monde pour vous aider dans vos tâches ménagères mais aussi pour régler vos différends avec certaines personnes. Prennez garde, le sortilège "Avada Kedavra" fonctionne mal' , price: '317€', category: 'Outils', univers:'Poudlard', poster_url:"https://static.wikia.nocookie.net/noir-ramage/images/3/3d/Baguette_de_Sureau.jpg/revision/latest?cb=20180729143032&path-prefix=fr")
item3 = Item.create(name: 'Fouet de taureau en cuir', description: "Je mets en location mon célèbre fouet de taureau. Il m'a accompagné tout au long de ma vie d'archéologue. Très pratique pour désarmer vos ennemis et attraper ce que vous voulez. Il peut être également utilisé comme liane" , price: '99€', category: 'Pratique', univers:'Indiana Jones', poster_url:"https://assets.stickpng.com/images/5aaea0c97603fc558cffc06d.png")
item4 = Item.create(name: 'Criquet Infernal', description: "Petit par sa taille mais très puissant ! Très pratique pour casser vos murs de placo. En revanche, l'utiliser, c'est l'adopter" , price: '215€', category: 'armes', univers:'Men in Black', poster_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.allocine.fr%2Farticle%2Fdossiers%2Fcinema%2Fdossier-18592238%2F%3Fpage%3D8%26tab%3D0&psig=AOvVaw3Wd0E89n8GV1lrDbCOBq2N&ust=1685536712594000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCICh59mHnf8CFQAAAAAdAAAAABAE")
item5 = Item.create(name: 'Petit Sabre Laser Vert', description: "Petit mon sabre laser est, mais grande puissance il a. Être patient il faudra pour le maitriser"  , price: '517€', category: 'armes', univers:'Star Wars', poster_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtHhbZxKSxyTd5o6-VT0qXFaMNW0iihQwEsA&usqp=CAU")
item7 = Item.create(name: 'Raquette de Ping-Pong', description: 'Comme le disais ma maman, la vie est comme une boîte de chocolat' , price: '215€', category: 'loisirs', univers:'Forrest Gump', poster_url:"https://medias.spotern.com/products/w310/66/66402-1555977600.jpg")
item8 = Item.create(name: 'Double Sabre Laser Rouge', description: "yolo bis", price: '215€', category: 'armes', univers:'Star Wars', poster_url:"https://cdn.shopify.com/s/files/1/0296/2007/6603/files/dark-maul-avec-double-sabre-laser.jpg?v=1623961575")
item9 = Item.create(name: 'Le ZF-One', description: "C'est léger. La poignée est réglable pour un transport facile. Bon pour les droitiers et les gauchers. Se décompose en quatre parties. Indétectable aux rayons X. Idéal pour des interventions rapides et discrètes. Un mot sur la puissance de feu : chargeur en titane. 3 000 clips ronds avec des éclats liquides de 3 à 300." , price: '1200€', category: 'armes', univers:'5ème élément', poster_url:"https://www.studiocreations.com/howto/zf1/images/IMG_7229.jpg")
item10 = Item.create(name: 'Mon épée Andurïl', description: "Brisée par le sorcier Sauron, elle a été reforgée chez les Elfes pour le combrattre à nouveau, il est fortement conseillé d'être grand, étant donné que mon épée est immense et assez lourde" , price: '1689€', category: 'armes', univers:'Le seigneur des anneaux', poster_url:"https://i.etsystatic.com/29939833/r/il/ab0645/4024645762/il_570xN.4024645762_qnd0.jpg")
item11 = Item.create(name: 'Mon Précieux', description: "Mon précieux… Ils me l'ont volé ! Sales petits hobbits joufflus !" , price: '114€', category: 'Bijoux', univers:'Le seigneur des anneaux', poster_url:"https://img.over-blog-kiwi.com/1/07/73/44/20190328/ob_87be15_anneau.jpg")
item12 = Item.create(name: 'Tournevis Sonique ', description: "Sa fonction la plus commune est d'ouvrir tous les verrous, qu'ils soient électroniques ou mécaniques, ainsi que d'ouvrir ou fermer des portes pour fuir (sauf les portes en bois), ou tout simplement pour l'exploration. Il est aussi utilisé pour réparer des objets, scanner ou analyser différentes substances" , price: '18€', category: 'outils', univers:'Doctor Who', poster_url:"https://www.getdigital.fr/images/products/__generated__resized/1100x1100/12183DW-12_Fernb_08.jpg")


puts 'Finished!'
