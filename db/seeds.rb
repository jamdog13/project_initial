# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => "firstU", :email =>"first@meow.meow", password:"meow", password_confirmation:"meow")
User.create(name:"SecondU",email:"sec@sec.sec",password:"meow", password_confirmation:"meow")
User.create(name:"A",email:"a@b.c",password:"a", password_confirmation:"a")
Game.create(name:"TestGame")
Game.create(name:"FishGame")
#q=User.new
#q.name="thirdly"
#q.email="third@third.com"
#w=q.messages.new
#w.title="meow"
#w.content="meh"
#w.save
#q.save
Score.create(value:123,user_id:1,game_id:1)
Score.create(value:23,user_id:2,game_id:2)
