# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(name: 'admin')
User.create(name: 'admin', email: 'admin@magicbeans.com', ic: '910203-10-5123', phone: '0145667896', password: 'password', password_confirmation: 'password', confirmed_at: Time.now)
Log.create(title: 'Created a user', log_type: 'users', type_id: 1)
User.find_by_id(1).roles.push(Role.find_by_name('admin'))
Log.create(title: 'Updated a user', log_type: 'users', type_id: 1)
Program.create(name: 'MaGIC Techinical Bootcamps', description: "As part of MaGIC Academy, we are offering several full-time coding and design bootcamps with the goal to increase the number of technical founders, and the pool of qualified technical employees and designers.", speaker: 'Various Instructors', speakerbio: 'Web/Rails Developer', biourl: 'www.mymagic.my/technicalbootcamp/#team', keytakeways: 'Learn Web Development', tags: 'web-dev, rails, programming', resources: "www.mymagic.my")
Log.create(title: 'Created a program', log_type: 'programs', type_id: 1)
Activity.create(name: 'Web Development Bootcamp',start_date: DateTime.new(2015,3,1,9,0,0,'+8'), end_date: DateTime.new(2015,5,31,5,0,0,'+8'),venue: 'MaGIC Headquarter',description: "Whether you are a recent graduate, a non-technical founder or a career-switcher, you can become a highly-skilled web developer. Our 9 week long full time web development class takes you from zero to hero. When you complete it, you'll have all the skills needed to rapidly deploy your visions. The next intake in November is already full. Apply NOW for the next intake. Slots are limited and they are going fast. When you graduate, you may go directly to work as a web developer or continue with one of our other excellent training programs.",speaker: 'Various Instructors',speakerbio: 'Web/Rails Developer',biolink: 'www.codedivision.my/#team',keytakeaway: 'Learn Web Dev',prerequisite: 'NIL', maxattendee: 5,tags: 'web-dev, rails, programming',resources: "www.codedivision.my",program_id: 1)
Log.create(title: 'Created an activity', log_type: 'activities', type_id: 1)
Activity.create(name: 'Programmer Finishing School',start_date: DateTime.new(2015,3,1,9,0,0,'+8'), end_date: DateTime.new(2015,5,31,5,0,0,'+8'),venue: 'Makespace, SSTwo Mall',description: "Are you a final year computer science/engineering student? We'll coach you both on-site and remotely to polish your communication, collaboration and web development skills. You'll work as part of a team to design, build, test and deploy an MVP application for a startup. And your work counts as your final year project. Do well, and your startup might just ask you to stick around after graduation. Or gain the upper hand in the competitive job market for highly paid tech jobs. Apply NOW for the next intake in early 2015. Limited slots available.",speaker: 'Various Instructors',speakerbio: 'Rails Developer',biolink: 'www.codemalaysia.com/#footer',keytakeaway: 'Learn Rails',prerequisite: 'NIL', maxattendee: 30,tags: 'web-dev, rails, programming',resources: "www.codemalaysia.com",program_id: 1)
Log.create(title: 'Created an activity', log_type: 'activities', type_id: 2)
Activity.create(name: 'Developer & Design Apprenticeship',start_date: DateTime.new(2015,3,1,9,0,0,'+8'), end_date: DateTime.new(2015,8,31,5,0,0,'+8'),venue: 'SSTwo Mall, Seksyen 17',description: 'Throughout this six-month program, senior developers or designers guide you as you work on multiple startup projects of varying difficulty. You learn by doing to equip you with skills to join a startup as a mid-to-senior level developer or designer when you graduate. Slots for this program are very limited so be sure to enroll as soon as possible. Application continues through March 2015.',speaker: 'Various Instructors',speakerbio: 'Web Developer/Designer',biolink: 'www.joinalps.com',keytakeaway: 'Learn Web Development/Designer',prerequisite: 'Web Development/Design Background', maxattendee: 5,tags: 'web-dev, rails, programming',resources: "www.joinalps.com/apprentices",program_id: 1)
Log.create(title: 'Created an activity', log_type: 'activities', type_id: 3)