# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users seed
[
  {email: 'admin@example.com', passwd: 'Admin2016Admin', is_admin: true},
].each do |udata|
  if User.exists?(email: udata[:email]) then
    puts "User: #{udata[:email]} already exists. Skipping."
  else
    puts "User: adding #{udata[:email]} with passwd: #{udata[:passwd]}"
    user = User.new
    user.email = udata[:email]
    user.password = udata[:passwd]
    user.password_confirmation = udata[:passwd]
    user.add_role :admin if udata[:is_admin]
    user.save!
  end
end
