User.delete_all
Category.delete_all
Activity.delete_all
Tag.delete_all



u1 = User.create(email: 'john@test.com', name: 'John', password:'test')
u2 = User.create(email: 'umer@test.com', name: 'Umer', password:'test')
u3 = User.create(email: 'mina@test.com', name: 'Mina', password:'test')

c1 = Category.create(name: 'food')
c1 = Category.create(name: 'coffee')
c1 = Category.create(name: 'clothes')





t1 = Tag.create(name: 'fun')
t1 = Tag.create(name: 'scary')
t1 = Tag.create(name: 'delicious')


