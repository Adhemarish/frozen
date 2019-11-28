# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Booking.destroy_all
Equipment.destroy_all
User.destroy_all

puts "Creating database..."

url1 = 'https://cdn.vox-cdn.com/thumbor/rpmbJ_H5i4g3vFNeZVB6mdZHfW4=/0x0:711x400/1200x800/filters:focal(325x93:437x205)/cdn.vox-cdn.com/uploads/chorus_image/image/60365061/pokemon_piplup.0.png'
ludo = User.new(name: 'Ludo', email: 'ludo@frozen.com', password: 'ludofrozen')
ludo.remote_avatar_url = url1
ludo.save!

url2 = 'https://swordshield.pokemon.com/assets/img/articles/pokemon_yamper_2x.png'
neven = User.new(name: 'Neven', email: 'neven@frozen.com', password: 'nevenfrozen')
neven.remote_avatar_url = url2
neven.save!

url3 = 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/11/13/14/pokemon-lets-go.jpg?w968h681'
caro = User.new(name: 'Caro', email: 'caro@frozen.com', password: 'carofrozen')
caro.remote_avatar_url = url3
caro.save!

url4 = 'https://img.gaming.gentside.com/article/pokemon/pokemon-epee-et-bouclier-ouistempo-de-type-plante_65d88e41a48640e6ceccc08ed4f231e299b3604d.jpg'
faten = User.new(name: 'Faten', email: 'faten@frozen.com', password: 'fatenfrozen')
faten.remote_avatar_url = url4
faten.save!

# p User.all

a = Equipment.new(owner: User.all.sample, title: "Moonboots taille 40", material_category: "Boots", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
a.remote_picture_url = "https://images.cdn.snowleader.com/media/catalog/product/cache/1/image/0dc2d03fe217f8c83829496872af24a0/m/o/moon_boot_nylon_noire-configurable-moonboot-moon00001_4.jpg"
a.save!
b= Equipment.new(owner: User.all.sample, title: "Skis taille adulte", material_category: "Ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "20", details: "Quelques rayures sur le dessus.\nFartage refait régulièrement.\nSkis polyvalents, pour tous niveaux." )
b.remote_picture_url ='https://www.oxygene.ski/wp-content/uploads/2017/03/SILVERoxygene-equipment-photo-refresh-2018-2019-1500-2000-19.jpg'
b.save!
c = Equipment.new(owner: User.all.sample, title: "Skis taille enfant", material_category: "Ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "15", details: "Excellent état.\nTous terrains.\nParfaits pour les petits bouts débutants et confirmés." )
c.remote_picture_url ='https://contents.mediadecathlon.com/p964789/k$2ae7dc9853285461b6fe9b9705040212/sq/SKI+DE+PISTE+ENFANT+AVEC+FIXATION+BOOST+500+BLEU.jpg'
c.save!
d = Equipment.new(owner: User.all.sample, title: "Snowboard adulte", material_category: "Snowboard", location: "1 rue Muller, 75018 Paris", price_per_day: "10", details: "Etat neuf.\nParfait pour le freeride.\nFixations très faciles à utiliser.")
d.remote_picture_url ='https://contents.mediadecathlon.com/p1705464/k$e806112d6dba25fa93f1f78ba745d90b/sq/Pack+planche+de+snowboard+piste+freeride+femme+Serenity+500.jpg'
d.save!
e = Equipment.new(owner: User.all.sample, title: "Chaussures de ski taille 37", material_category: "Chaussures de ski", location: "43 rue de Brissac, 49000 Angers", price_per_day: "15", details: "Etat OK.\nTrès bonne tenue au mollet.\nLe premier clapet sur la chaussure droite est un peu dur mais ça tiendra mieux une fois fermé!")
e.remote_picture_url ='https://glisshop-glisshop-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/735/735/da627020441361f04d0207e5d4df53f4f8bad06f_VH18DALBCHA004_0.jpeg'
e.save!
f = Equipment.new(owner: User.all.sample, title: "Ski de fonds", material_category: "Ski", location: "44 rue François 1er, 75008 Paris", price_per_day: "20", details: "Etat OK.\nQuelques rayures\nParfaits pour un débutant.")
f.remote_picture_url='https://contents.mediadecathlon.com/p994668/k$b275dfc56feacd7719b32f4bcefc256c/sq/SKI+DE+PISTE+HOMME+AVEC+FIXATION+BOOST+300+ARCHTEC+ROUGE+ET+NOIR.webp'
f.save!
g = Equipment.new(owner: User.all.sample, title: "Chaussures de ski taille enfant", material_category: "Chaussures de ski", location: "44 rue Chabre, 83000 Toulon", price_per_day: "8", details: "Excellent état.\nTrès confortables et super maintient.\nLégères et flexibles.")
g.remote_picture_url ='https://www.placedelaloc.com/sites/default/files/styles/annonce_detail/public/annonces/2018/02/18/32420/location-skis_enfants_80cm_rossignol-680791946.jpg'
g.save!
h = Equipment.new(owner: User.all.sample, title: "Snowboard Rossignol adulte", material_category: "Snowboard", location: "9 rue de Navarin, 75009 Paris", price_per_day: "10", details: "Etat neuf.\nPlanche polyvalente.\nFixations classiques.")
h.remote_picture_url = 'https://www.cdiscount.com/pdt2/3/6/6/1/700x700/mp07344366/rw/snowboard-rossignol-tesla-femme.jpg'
h.save!
i = Equipment.new(owner: User.all.sample, title: "Bâtons de ski adulte", material_category: "Batons de ski", location: "44 rue des Champs Saint-Martin, 49000 Angers", price_per_day: "7", details: "Etat OK.\nTrès robustes.\nHauteur réglable pour utilisateur entre 1m65 et 1m75")
i.remote_picture_url = 'https://www.montania-sport.com/32377-large_default/batons-monbrin-ski-speed-touring-atk.jpg'
i.save!
k = Equipment.new(owner: User.all.sample, title: "Chaussures de ski taille 39", material_category: "Chaussures de ski", location: "2 rue Paul Fort, 49100 Angers", price_per_day: "15", details: "Etat OK.\nExcellent maintient.\nQuelques rayures.")
k.remote_picture_url = 'https://contents.mediadecathlon.com/p1706345/k$ad7b7dbc0c7f706bcf9071914abc4235/sq/Chaussures+de+ski+freeride+Rossignol+Alltrack+90.jpg'
k.save!

puts "Finished !"

