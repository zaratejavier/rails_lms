# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = ['ta','student','teacher']

10.times do 
  course = Course.create(name: Faker::Educator.course_name )

  10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name  
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id,
    )
  end #inner loop
end

puts "SEEDed"
puts Course.all.size
