# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'admin@gmail.com', password: 'nalced', password_confirmation: "nalced", firstname: 'Declan', lastname: 'Foody', admin: true)

# User.create!(email: 'charles@mail.com ', password: 'declan', password_confirmation: "nalced" firstname: 'charles', lastname: 'foody', admin: true)

# 1. Create migration and add boolean admin
# 2. Create the first admin user and run rake db:seed
# 3. Add index in admin/users/index.erb to show all users
# 4. You can add an edit link to each user
# 5. Add the _form and edit for a user in admin/users (follow how movies works)
