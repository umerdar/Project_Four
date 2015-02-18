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

a1 = Activity.create(name: 'Rage Diner', description: 'A diner that gets angry', location: 40.745602, -73.981358, user_id: u1.id, category_id: c1.id)





t1 = Tag.create(name: 'fun')
t2 = Tag.create(name: 'scary')
t3 = Tag.create(name: 'delicious')


