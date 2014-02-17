# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => "firstU", :email =>"first@meow.meow")
User.create(name:"SecondU",email:"sec@sec.sec")
Game.create(name:"TestGame")
q=User.new
q.name="thirdly"
q.email="third@third.com"
w=q.messages.new
w.title="meow"
w.content="meh"
w.save
q.save

