require './db/connection.rb'
require './lib/user.rb'
require './lib/category.rb'
require './lib/activity.rb'
require './lib/tag.rb'

User.delete_all
Category.delete_all
Activity.delete_all
Tag.delete_all



u1 = User.create(email: 'john@test.com', name: 'John', password:'test')
u2 = User.create(email: 'umer@test.com', name: 'Umer', password:'test')
u3 = User.create(email: 'mina@test.com', name: 'Mina', password:'test')

c1 = Category.create(name: 'food')
c2 = Category.create(name: 'coffee')
c3 = Category.create(name: 'clothes')

a1 = Activity.create(name: 'Rage Diner', description: 'A diner that gets angry', latitude: 40.745602, longitude: -73.981358, user_id: u1.id, category_id: c1.id)
a2 = Activity.create(name: 'Fools Coffee', description: 'Coffee that tastes wonderful', latitude: 40.742513, longitude: -73.990971, user_id: u2.id, category_id: c2.id)
a3 = Activity.create(name: 'Nightmare Dressers', description: 'Scary and entertaining clothes', latitude: 40.746203, longitude: -73.987602, user_id: u3.id, category_id: c3.id)


t1 = Tag.create(name: 'fun')
t2 = Tag.create(name: 'scary')
t3 = Tag.create(name: 'delicious')


