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
Booking.destroy_all
Item.destroy_all
User.destroy_all
p "--------------all users deleted--------------"

p "--------------all items deleted--------------"

user1 = User.create(email: "foucauld@qmail.com", password: "123456", name: "foucauld", photo_url: "https://pngimg.com/uploads/batman/batman_PNG80.png")
user2 = User.create(email: "alexandre@gmail.com", password: "123456", name: "Alexandre", photo_url: "https://media.gqmagazine.fr/photos/5ec3f27383f12a4c1cd79841/4:3/w_1376,h_1032,c_limit/n-deadpool3.jpg")
user3 = User.create(email: "fx@gmail.com", password: "123456", name: "FX", photo_url: "https://i.pinimg.com/originals/64/db/e4/64dbe449efed26997e5b05392a3752b5.jpg")
user4 = User.create(email: "jane@gmail.com", password: "123456", name: "Jane", photo_url: "https://www.films-disney.fr/wp-content/uploads/2018/05/cendrillon.jpg")
user5 = User.create(email: "phil@gmail.com", password: "123456", name: "phil", photo_url: "https://www.gannett-cdn.com/presto/2019/04/25/USAT/9778482f-f809-4a08-82a7-67ddfa3e2f98-XXX_AVENGERS_AGE_ULTRON_MOV_jy_5965_.JPG?crop=1068,600,x1088,y30&width=3200&height=1680&fit=bounds")
user6 = User.create(email: "darkvador@gmail.com", password: "123456", name: "Dark Vador", photo_url: "https://www.breizh-info.com/wp-content/uploads/2021/04/dark_vador.jpeg")
user8 = User.create(email: "voldemort@gmail.com", password: "123456", name: "Voldemort", photo_url: "https://www.melty.fr/wp-content/uploads/meltyfr/2022/04/voldemortheadshot_dhp1.jpg")
user9 = User.create(email: "indiana@gmail.com", password: "123456", name: "Indianna Jones", photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Indianajones4.jpg/800px-Indianajones4.jpg")
user10 = User.create(email: "agentj@gmail.com", password: "123456", name: "Agent J", photo_url: "https://accounts.termwiki.com/thumb1.php?f=d4e7c604-1385522120.jpg&width=380&auto=1")
user11 = User.create(email: "yoda@gmail.com", password: "123456", name: "Yoda", photo_url: "https://img.lemde.fr/2017/12/07/0.5/0.5/3499/2332/1440/960/60/0/3892f92_PJ401_FILM-STARWARS-ALIENLIFE_1207_11.JPG")
user12 = User.create(email: "drwho@gmail.com", password: "123456", name: "Dr Who", photo_url: "https://m1.quebecormedia.com/emp/emp/davidtennantb599631f-52d3-4cdb-ad88-ba53c26fac53_ORIGINAL.jpg?impolicy=crop-resize&x=0&y=0&w=1080&h=1080&width=925")
user13 = User.create(email: "gump@gmail.com", password: "123456", name: "Forrest Gump", photo_url: "https://m.media-amazon.com/images/M/MV5BZTY4NjcxNDctZmVjMC00NzM0LWIxYTctNjdhNzdlN2VkNjNiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg")
user14 = User.create(email: "dmaul@gmail.com", password: "123456", name: "Dark Maul", photo_url: "https://img-4.linternaute.com/vc8LTsxJJCTAy808wfqnKKFEFqg=/1500x/smart/2a18f7f617e043d28170b78f62b1ed15/ccmcms-linternaute/10782636.jpg")
user15 = User.create(email: "zorg@gmail.com", password: "123456", name: "Zorg", photo_url: "https://i.pinimg.com/originals/ec/a0/2a/eca02aeb7e645fe238a7812680deda08.jpg")
user16 = User.create(email: "aragorn@gmail.com", password: "123456", name: "Aragorn", photo_url: "https://www.melty.fr/wp-content/uploads/meltyfr/2022/02/media-43739-729x410.jpg")
user17 = User.create(email: "gollum@gmail.com", password: "123456", name: "Gollum", photo_url: "https://cdn.dlcompare.com/others_jpg/upload/news/image/le-seigneur-des-anneaux-gollum-ne-sortira-finalement-pas-en-septembre-image-65c7c174.jpeg")

p "-------------- #{User.count} users created--------------"

item1 = Item.create(user: user6, name: 'Sabre Laser rouge', description: "Voici mon sabre laser rouge, remis en main propre par le Sénateur Palpatine. Il a été un allié important dans ma vie du côté obscure de la Force. Attention, il est coupant !", price: '215 €', category: 'armes', univers:'Star Wars', poster_url: 'https://fr.web.img2.acsta.net/r_1280_720/newsv7/19/06/21/16/41/2593615.jpg', address: "Marseille")
item2 = Item.create(user: user8, name: 'Baguette de Sureau', description: "Salut les moldus, c'est Voldemort, ce looser de Potter avait oublié un Horcruxe ! Dans le cadre d'un projet personnel de financement d'un nouvel ordre du mal dont l'objectif sera de vous soumettre tous,je vous propose à la location ma baguette de Sureau. Elle saura vous aider dans votre vie de tous les jours. Afin de m'éviter un séjour précoce à Azkaban, certains sortilèges ont été bridés. Je peux néanmoins moyennant finances me déplacer chez vous pour effectuer votre sale besogne. J'ai une expérience assez importante dans ce domaine donc si vous souhaitez vous offrir les services d'un pro, n'hésitez plus ! Je prends les Bitcoins, les Gallions et les même les livres Sterling", price: '317€', category: 'Outils', univers:'Harry Potter', poster_url:"https://www.melty.fr/wp-content/uploads/meltyfr/2021/07/media-1983.jpg", address: "Londres")
item3 = Item.create(user: user9, name: 'Fouet pour aventurier !', description: "Je mets en location mon célèbre fouet d'aventurier. Il m'a accompagné tout au long de ma vie d'archéologue et pourra vous aider à faire face aux grands aléas de la vie. Aussi bien utile pour vous transporter de votre cabine de douche à votre tapis de bain que pour désarmer vos ennemis. L'essayer c'est l'adopter ! " , price: '99€', category: 'Pratique', univers:'Indiana Jones', poster_url:"https://www.sciencesetavenir.fr/assets/img/2021/05/05/cover-r4x3w1200-6092b404900d4-010-a7a20140-021.jpg", address: "Paris")
item4 = Item.create(user: user10, name: 'Criquet Infernal', description: "Petit par sa taille mais très puissant ! Très pratique pour casser vos murs de placo. En revanche, l'utiliser, c'est l'adopter" , price: '215€', category: 'armes', univers:'Men in Black', poster_url:"https://www.thx-trailer.com/replica/MIB/cricket/bilder/5.JPG", address: "Chicago")

item5 = Item.create(user: user11, name: 'Petit Sabre Laser Vert', description: "Petit mon sabre laser est, mais grande puissance il a. Être patient il faudra pour le maitriser"  , price: '517€', category: 'armes', univers:'Star Wars', poster_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtHhbZxKSxyTd5o6-VT0qXFaMNW0iihQwEsA&usqp=CAU",address: "Casablanca")
item6 = Item.create(user: user13, name: 'Raquette de Ping-Pong', description: "Veritable pièce de musée avec laquelle j'ai gagné l'une des plus grande bataille de l'histoire de la guerre froide. Signée au dos par JFK " , price: '215€', category: 'loisirs', univers:'Forrest Gump', poster_url:"https://medias.spotern.com/products/w310/66/66402-1555977600.jpg", address: "Beijing")
item7 = Item.create(user: user14, name: 'Double Sabre Laser Rouge', description: "On arrête pas le progrès", price: '915€', category: 'armes', univers:'Star Wars', poster_url:"https://cdn.shopify.com/s/files/1/0296/2007/6603/files/dark-maul-avec-double-sabre-laser.jpg?v=1623961575", address: "Rio De Janeiro")

item8 = Item.create(user: user15, name: 'Le ZF-One', description: "C'est léger. La poignée est réglable pour un transport facile. Bon pour les droitiers et les gauchers. Se décompose en quatre parties. Indétectable aux rayons X. Idéal pour des interventions rapides et discrètes. Un mot sur la puissance de feu : chargeur en titane. 3 000 clips ronds avec des éclats liquides de 3 à 300.", price: '7000€', category: 'armes', univers:'5ème élément', poster_url:"https://www.studiocreations.com/howto/zf1/images/IMG_7229.jpg",address: "Devils Tower")

item9 = Item.create(user: user16, name: "Epée d'Andurïl", description: "Brisée par le sorcier Sauron, elle a été reforgée chez les Elfes pour le combrattre à nouveau, deconseillée aux nains, mon épée est immense et assez lourde" , price: '1689€', category: 'armes', univers:'Le Seigneurs Des Anneaux', poster_url:"https://i.etsystatic.com/29939833/r/il/ab0645/4024645762/il_570xN.4024645762_qnd0.jpg",address: "Népal")
item10 = Item.create(user: user17, name: 'Mon Précieux', description: "Mon précieux… Ils me l'ont volé ! Sales petits hobbits joufflus !" , price: '12500€', category: 'Bijoux', univers:'Le Seigneurs Des Anneaux', poster_url:"https://img.over-blog-kiwi.com/1/07/73/44/20190328/ob_87be15_anneau.jpg", address:"Himalaya")
item11 = Item.create(user: user12, name: 'Tournevis Sonique ', description: "Sa fonction la plus commune est d'ouvrir tous les verrous, qu'ils soient électroniques ou mécaniques, ainsi que d'ouvrir ou fermer des portes pour fuir (sauf les portes en bois), ou tout simplement pour l'exploration. Il est aussi utilisé pour réparer des objets, scanner ou analyser différentes substances" , price: '951€', category: 'outils', univers:'Doctor Who', poster_url:"https://www.getdigital.fr/images/products/__generated__resized/1100x1100/12183DW-12_Fernb_08.jpg",address: "Liverpool")

p "-------------- #{Item.count} items created--------------"
puts 'Finished!'
