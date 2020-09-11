# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'yaml'

puts "Destroying all"
Review.destroy_all
Post.destroy_all
Project.destroy_all
User.destroy_all



user_1 = User.create(first_name: 'Addison', last_name: 'Holbrook', email: "Addison@ajhconsulting.net", password: '123456')
user_2 = User.create(first_name: 'Finance', last_name: 'AJH', email: "Finance@ajhconsulting.net", password: '123456')
user_3 = User.create(first_name: 'Steve', last_name: 'Lobs', title: 'CEO', company:'Mapple', email: "steve@apple.com", password: '123456')
user_4 = User.create(first_name: 'Bill', last_name: 'Wates', title: 'CEO', company:'Nicrosoft', email: "bill@microsoft.com", password: '123456')
user_5 = User.create(first_name: 'Kteve', last_name: 'Wozniak', title: 'Founder', company:'Mapple', email: "wozniak@microsoft.com", password: '123456')

projects = YAML.load_file(Rails.root.join('db/lib/projects.yml')).map(&:deep_symbolize_keys)

project = projects[0] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[1] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[2] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[3] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[4] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[5] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[6] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[7] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[8] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[9] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[10] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[11] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[12] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[13] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
project = projects[14] ;pro = Project.new(project.merge({user_id: user_1.id}).except(:image, :image_company_logo)); pro.save
# project_1 = Project.create(city:"london", user_id: user_1.id, title: 'Expansion', company: 'Eden', headline: 'international development', job_description: 'working to help a us company expand to europe', starts_at: Date.today )
# project_2 = Project.create(city:"london", user_id: user_2.id, title: 'sales', company: 'alush', headline: 'web-development', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 50.days.ago)
# project_3 = Project.create(city: "berlin", user_id: user_1.id, title: 'Marketing', company: 'marketco', headline: 'marking research and development', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 200.days.ago)
# project_4 = Project.create(city: "paris", user_id: user_1.id, title: 'New', company: 'lala', headline: 'Web-Dev', job_description: 'lalal alal alalalala alalala la lal la ', starts_at: 3.years.ago)

Review.create(user: User.third, project: Project.first, content: 'AJH really held it togeather! Keep it up and you will go far.', rating: 4)
Review.create(user: User.fourth, project: Project.second, content: "AJH's programming is something to be feared. Even I am worried of this supcoming star!", rating: 5)
Review.create(user:User.last, project: Project.last, content: 'Better then founding Apple, would work with again for sure.', rating: 5)


Post.create(user: User.first, project: Project.first, content: 'something')
Post.create(user:User.last, project: Project.first, content: 'something back')

# NewProjectRequest.create(project_id: project_4, user_id: user_1)
# puts "#{User.count}users created!"
# puts "#{Project.count}projects created!"
# puts "#{Review.count}reviews created!"
# puts "#{Post.count}posts created!"
# # projects = YAML.load(File.join('__dir__','lib/project.yml'))
# # byebug

# projects.each { |project| pro = Project.new(project.merge({user: user_1}).except(:image, :image_company_logo)); pro.image.attach(project[:image]) if project[:image].present? ; pro.image_company_logo.attach(project[:image_company_logo]) if project[:image_company_logo].present?; pro.save }
