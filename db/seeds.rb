# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create name: 'Matoi', status: :active, kind: :adm , email: 'matoi@matoi.com' , password: 123456
User.create name: 'Ryuko', status: :active, kind: :adm , email: 'ryuko@ryuko.com' , password: 123456

User.create name: 'Wiese', status: :active, kind: :professor , email: 'wiese@email.com' , password: 456789
User.create name: 'Paulo', status: :active, kind: :professor , email: 'paulo@email.com' , password: 456789

Sala.create name: 'E101', status: :active
Sala.create name: 'E102', status: :active
Sala.create name: 'E103', status: :active
Sala.create name: 'E104', status: :active
