u = User.first
u.skip_reconfirmation!
u.update_attributes(email: 'jsrratt@aol.com', password: 'helloworld', password_confirmation: 'helloworld')
u.save
puts "Seed finished"
puts "#{User.count} users created"
puts "#{Announcement.count} announcments created"
puts "#{Note.count} notes created"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
