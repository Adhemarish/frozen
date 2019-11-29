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

ludo = User.new(name: 'Ludo', email: 'ludo@frozen.com', password: 'ludofrozen')
ludo.avatar = File.open(Rails.root.join('db/fixtures/ludo.jpeg'))
ludo.save!

neven = User.new(name: 'Neven', email: 'neven@frozen.com', password: 'nevenfrozen')
neven.avatar = File.open(Rails.root.join('db/fixtures/neven.jpeg'))
neven.save!

caro = User.new(name: 'Caro', email: 'caro@frozen.com', password: 'carofrozen')
caro.avatar = File.open(Rails.root.join('db/fixtures/caro.jpeg'))
caro.save!

faten = User.new(name: 'Faten', email: 'faten@frozen.com', password: 'fatenfrozen')
faten.avatar = File.open(Rails.root.join('db/fixtures/faten.jpeg'))
faten.save!

# p User.all

a = Equipment.new(owner: ludo, title: "Batons de ski", material_category: "Batons de ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nDragonnes solides.\nLégers.")
a.picture = File.open(Rails.root.join('db/fixtures/batons1.png'))
a.save!
b = Equipment.new(owner: caro, title: "Batons de ski adulte", material_category: "Batons de ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "5",details: "Etat OK.\nBeau planté.\nLégers.")
b.picture = File.open(Rails.root.join('db/fixtures/batons2.png'))
b.save!
c = Equipment.new(owner: faten, title: "Batons de ski", material_category: "Batons de ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "8",details: "Excellent état.\nAcier solide.\nManiables.")
c.picture = File.open(Rails.root.join('db/fixtures/batons3.png'))
c.save!
d = Equipment.new(owner: neven, title: "Batons de ski adulte", material_category: "Batons de ski", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "7",details: "Etat neuf.\nJamais utilisés.\nRéglables.")
d.picture = File.open(Rails.root.join('db/fixtures/batons4.png'))
d.save!
e = Equipment.new(owner: ludo, title: "Batons de ski 1m50", material_category: "Batons de ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "6",details: "Excellent état.\nTrès utiles.\nIdéaux por la poudreuse.")
e.picture = File.open(Rails.root.join('db/fixtures/batons5.jpeg'))
e.save!
f = Equipment.new(owner: caro, title: "Batons de ski adulte", material_category: "Batons de ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "8",details: "Excellent état.\nBelle déco.\nLégers.")
f.picture = File.open(Rails.root.join('db/fixtures/batons6.png'))
f.save!
g = Equipment.new(owner: neven, title: "Batons de ski 1m70", material_category: "Batons de ski", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Usé.\nQualité supérieure.\nTechniques.")
g.picture = File.open(Rails.root.join('db/fixtures/batons7.jpeg'))
g.save!

h = Equipment.new(owner: ludo, title: "Boots Snowboard adulte", material_category: "Boots", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "9",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
h.picture = File.open(Rails.root.join('db/fixtures/boots1.jpeg'))
h.save!
i = Equipment.new(owner: caro, title: "Boots Snowboard", material_category: "Boots", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
i.picture = File.open(Rails.root.join('db/fixtures/boots2.jpeg'))
i.save!
j = Equipment.new(owner: neven, title: "Boots Snowboard femme", material_category: "Boots", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
j.picture = File.open(Rails.root.join('db/fixtures/boots3.jpeg'))
j.save!
k = Equipment.new(owner: ludo, title: "Boots Snowboard homme", material_category: "Boots", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
k.picture = File.open(Rails.root.join('db/fixtures/boots4.jpeg'))
k.save!
l = Equipment.new(owner: caro, title: "Boots Snowboard taille 39", material_category: "Boots", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
l.picture = File.open(Rails.root.join('db/fixtures/boots5.jpeg'))
l.save!
m = Equipment.new(owner: ludo, title: "Boots Snowboard taille 44", material_category: "Boots", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
m.picture = File.open(Rails.root.join('db/fixtures/boots6.jpeg'))
m.save!
n = Equipment.new(owner: faten, title: "Boots Snowboard", material_category: "Boots", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
n.picture = File.open(Rails.root.join('db/fixtures/boots7.jpeg'))
n.save!

o = Equipment.new(owner: ludo, title: "Skis adulte", material_category: "Ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
o.picture = File.open(Rails.root.join('db/fixtures/skis1.jpeg'))
o.save!
q = Equipment.new(owner: faten, title: "Skis polyvalents", material_category: "Ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
q.picture = File.open(Rails.root.join('db/fixtures/skis2.jpeg'))
q.save!
r = Equipment.new(owner: caro, title: "Skis paraboliques", material_category: "Ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
r.picture = File.open(Rails.root.join('db/fixtures/skis3.jpeg'))
r.save!
s = Equipment.new(owner: ludo, title: "Skis adulte", material_category: "Ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
s.picture = File.open(Rails.root.join('db/fixtures/skis4.jpeg'))
s.save!
t = Equipment.new(owner: faten, title: "Skis ado", material_category: "Ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
t.picture = File.open(Rails.root.join('db/fixtures/skis5.jpeg'))
t.save!
u = Equipment.new(owner: caro, title: "Skis 1m80", material_category: "Ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
u.picture = File.open(Rails.root.join('db/fixtures/skis6.jpeg'))
u.save!
v = Equipment.new(owner: neven, title: "Skis 1m70", material_category: "Ski", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
v.picture = File.open(Rails.root.join('db/fixtures/skis7.jpeg'))
v.save!

w = Equipment.new(owner: neven, title: "Snowboard adulte", material_category: "Snowboard", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
w.picture = File.open(Rails.root.join('db/fixtures/snowboard1.jpeg'))
w.save!
x = Equipment.new(owner: caro, title: "Snowboard polyvalents", material_category: "Snowboard", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
x.picture = File.open(Rails.root.join('db/fixtures/snowboard2.jpeg'))
x.save!
y = Equipment.new(owner: ludo, title: "Snowboard paraboliques", material_category: "Snowboard", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
y.picture = File.open(Rails.root.join('db/fixtures/snowboard3.jpeg'))
y.save!
z = Equipment.new(owner: faten, title: "Snowboard adulte", material_category: "Snowboard", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
z.picture = File.open(Rails.root.join('db/fixtures/snowboard4.jpeg'))
z.save!
aa = Equipment.new(owner: ludo, title: "Snowboard ado", material_category: "Snowboard", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
aa.picture = File.open(Rails.root.join('db/fixtures/snowboard5.jpeg'))
aa.save!
bb = Equipment.new(owner: neven, title: "Snowboard 1m80", material_category: "Snowboard", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
bb.picture = File.open(Rails.root.join('db/fixtures/snowboard6.jpeg'))
bb.save!
cc = Equipment.new(owner: caro, title: "Snowboard 1m70", material_category: "Snowboard", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
cc.picture = File.open(Rails.root.join('db/fixtures/snowboard7.jpeg'))
cc.save!

dd = Equipment.new(owner: caro, title: "Chaussures de ski adulte", material_category: "Chaussures de ski", location: "10 rue Franklin, 44000 Nantes", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
dd.picture = File.open(Rails.root.join('db/fixtures/chaussures1.jpeg'))
dd.save!
ee = Equipment.new(owner: neven, title: "Chaussures de ski ado", material_category: "Chaussures de ski", location: "62 rue de la Louisiane, 83000 Toulon", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
ee.picture = File.open(Rails.root.join('db/fixtures/chaussures2.jpeg'))
ee.save!
ff = Equipment.new(owner: ludo, title: "Chaussures de ski rigides", material_category: "Chaussures de ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
ff.picture = File.open(Rails.root.join('db/fixtures/chaussures3.jpeg'))
ff.save!
gg = Equipment.new(owner: ludo, title: "Chaussures de ski taille 38", material_category: "Chaussures de ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
gg.picture = File.open(Rails.root.join('db/fixtures/chaussures4.jpeg'))
gg.save!
hh = Equipment.new(owner: faten, title: "Chaussures de ski ado", material_category: "Chaussures de ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
hh.picture = File.open(Rails.root.join('db/fixtures/chaussures5.jpeg'))
hh.save!
ii = Equipment.new(owner: ludo, title: "Chaussures de ski adulte", material_category: "Chaussures de ski", location: "41 avenue Besnardière, 49100 Angers", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
ii.picture = File.open(Rails.root.join('db/fixtures/chaussures6.jpeg'))
ii.save!
jj = Equipment.new(owner: faten, title: "Chaussures de ski taille 42", material_category: "Chaussures de ski", location: "20 rue Gauthey, 75017 Paris", price_per_day: "10",details: "Excellent état.\nTrès confortables et très chaudes.\nImperméabilité parfaite.")
jj.picture = File.open(Rails.root.join('db/fixtures/chaussures7.jpeg'))
jj.save!



puts "Finished !"

