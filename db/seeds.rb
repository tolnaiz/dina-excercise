# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create([{name: 'role1'}])

User.create([{name: 'Peter', role_id: 1}])

Permission.create([{name: 'perm1'}])
Permission.create([{name: 'perm2'}])

Connectable.create([{connectable_type: 'User', connectable_id: 1, permission_id: 1}])
Connectable.create([{connectable_type: 'Role', connectable_id: 1, permission_id: 2}])