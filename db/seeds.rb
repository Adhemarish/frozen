# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Equipment.destroy_all

puts "Creating database..."


ludo = User.create!(name: 'Ludo', email: 'ludo@frozen.com', encrypted_password: 'ludofrozen', avatar: )
ludo.remote_picture_url = 'https://cdn.vox-cdn.com/thumbor/rpmbJ_H5i4g3vFNeZVB6mdZHfW4=/0x0:711x400/1200x800/filters:focal(325x93:437x205)/cdn.vox-cdn.com/uploads/chorus_image/image/60365061/pokemon_piplup.0.png'
ludo.save!
neven = User.create!(name: 'Neven', email: 'neven@frozen.com', encrypted_password: 'nevenfrozen', avatar: )
neven.remote_picture_url = 'https://swordshield.pokemon.com/assets/img/articles/pokemon_yamper_2x.png'
neven.save!
caro = User.create!(name: 'Caro', email: 'caro@frozen.com', encrypted_password: 'carofrozen', avatar: )
caro.remote_picture_url = 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/11/13/14/pokemon-lets-go.jpg?w968h681'
caro.save!
faten = User.create!(name: 'Faten', email: 'faten@frozen.com', encrypted_password: 'fatenfrozen', avatar: )
faten.remote_picture_url = 'https://img.gaming.gentside.com/article/pokemon/pokemon-epee-et-bouclier-ouistempo-de-type-plante_65d88e41a48640e6ceccc08ed4f231e299b3604d.jpg'
faten.save!

a = Equipment.new(owner: User.all.sample, title: "Moonboots taille 40", material_category: "Boots", location: "Angers", price_per_day: "10", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
a.remote_picture_url = "https://images.cdn.snowleader.com/media/catalog/product/cache/1/image/0dc2d03fe217f8c83829496872af24a0/m/o/moon_boot_nylon_noire-configurable-moonboot-moon00001_4.jpg"
a.save!
b= Equipment.create!(owner: User.all.sample, title: "Skis taille adulte", material_category: "Ski", location: "Paris", price_per_day: "20", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
b.remote_picture_url ='https://www.oxygene.ski/wp-content/uploads/2017/03/SILVERoxygene-equipment-photo-refresh-2018-2019-1500-2000-19.jpg'
b.save!
c = Equipment.create!(owner: User.all.sample, title: "Skis taille enfant", material_category: "Ski", location: "Nantes", price_per_day: "15", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
c.remote_picture_url ='https://contents.mediadecathlon.com/p964789/k$2ae7dc9853285461b6fe9b9705040212/sq/SKI+DE+PISTE+ENFANT+AVEC+FIXATION+BOOST+500+BLEU.jpg'
c.save!
d = Equipment.create!(owner: User.all.sample, title: "Snowboard adulte", material_category: "Snowboard", location: "Paris", price_per_day: "10", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
d.remote_picture_url ='https://contents.mediadecathlon.com/p1705464/k$e806112d6dba25fa93f1f78ba745d90b/sq/Pack+planche+de+snowboard+piste+freeride+femme+Serenity+500.jpg'
d.save!
e = Equipment.create!(owner: User.all.sample, title: "Chaussures de ski taille 37", material_category: "Chaussures de ski", location: "Angers", price_per_day: "15", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
e.remote_picture_url ='https://glisshop-glisshop-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/735/735/da627020441361f04d0207e5d4df53f4f8bad06f_VH18DALBCHA004_0.jpeg'
e.save!
f = Equipment.create!(owner: User.all.sample, title: "Ski de fonds", material_category: "Ski", location: "Paris", price_per_day: "20", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
f.remote_picture_url='https://contents.mediadecathlon.com/p994668/k$b275dfc56feacd7719b32f4bcefc256c/sq/SKI+DE+PISTE+HOMME+AVEC+FIXATION+BOOST+300+ARCHTEC+ROUGE+ET+NOIR.webp'
f.save!
g = Equipment.create!(owner: User.all.sample, title: "Chaussures de ski taille enfant", material_category: "Chaussures de ski", location: "Toulon", price_per_day: "8", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
g.remote_picture_url =
h = Equipment.create!(owner: User.all.sample, title: "Snowboard Rossignol adulte", material_category: "Snowboard", location: "Paris", price_per_day: "10", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
h.remote_picture_url = 'https://glisshop-glisshop-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/735/735/1ab44ca6cb4194bb06612a693cc1b66c3d3a39d3_VH18LANGCHA016_0.jpeg'
h.save!
i = Equipment.create!(owner: User.all.sample, title: "Bâtons de ski adulte", material_category: "Bâtons de ski", location: "Angers", price_per_day: "7", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
i.remote_picture_url = 'https://www.montania-sport.com/32377-large_default/batons-monbrin-ski-speed-touring-atk.jpg'
i.save!
k = Equipment.create!(owner: User.all.sample, title: "Chaussures de ski taille 39", material_category: "Chaussures de ski", location: "Angers", price_per_day: "15", picture: , description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
k.remote_picture_url = 'https://contents.mediadecathlon.com/p1706345/k$ad7b7dbc0c7f706bcf9071914abc4235/sq/Chaussures+de+ski+freeride+Rossignol+Alltrack+90.jpg'
k.save!

puts "Finished !"

