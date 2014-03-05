# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => "firstU", :email =>"first@meow.meow", password:"meow", password_confirmation:"meow")
User.create(name:"secondU",email:"sec@sec.sec",password:"meow", password_confirmation:"meow")
User.create(name:"a",email:"a@b.c",password:"a", password_confirmation:"a")
Game.create(name:"TestGame")
Game.create(name:"FishGame")
Game.create(name:"UnfunGame")
Game.create(name:"Word Search")
#q=User.new
#q.name="thirdly"
#q.email="third@third.com"
#w=q.messages.new
#w.title="meow"
#w.content="meh"
#w.save
#q.save
Score.create(value:123,user_id:1,game_id:1)
Score.create(value:233,user_id:1,game_id:1)
Score.create(value:223,user_id:1,game_id:2)
Score.create(value:234,user_id:1,game_id:2)
Score.create(value:213,user_id:2,game_id:1)
Score.create(value:223,user_id:2,game_id:1)
Score.create(value:233,user_id:2,game_id:2)
Score.create(value:243,user_id:2,game_id:2)
Score.create(value:173,user_id:1,game_id:1)
Score.create(value:283,user_id:1,game_id:1)
Score.create(value:293,user_id:1,game_id:2)
Score.create(value:204,user_id:1,game_id:2)
Score.create(value:273,user_id:2,game_id:1)
Score.create(value:283,user_id:2,game_id:1)
Score.create(value:293,user_id:2,game_id:2)
Score.create(value:203,user_id:2,game_id:2)
Score.create(value:183,user_id:1,game_id:1)
Score.create(value:273,user_id:1,game_id:1)
Score.create(value:263,user_id:1,game_id:2)
Score.create(value:254,user_id:1,game_id:2)
Score.create(value:283,user_id:2,game_id:1)
Score.create(value:273,user_id:2,game_id:1)
Score.create(value:263,user_id:2,game_id:2)
Score.create(value:253,user_id:2,game_id:2)
Score.create(value:173,user_id:3,game_id:1)
Score.create(value:183,user_id:3,game_id:1)
Score.create(value:193,user_id:3,game_id:2)
Score.create(value:103,user_id:3,game_id:2)
Score.create(value:283,user_id:3,game_id:1)
Score.create(value:173,user_id:3,game_id:1)
Score.create(value:163,user_id:3,game_id:2)
Score.create(value:154,user_id:3,game_id:2)
Score.create(value:383,user_id:3,game_id:1)
Score.create(value:373,user_id:3,game_id:3)
Score.create(value:363,user_id:3,game_id:2)
Score.create(value:353,user_id:3,game_id:3)

Score.create(value:50,user_id:3,game_id:4)
Score.create(value:100,user_id:2,game_id:4)
Score.create(value:150,user_id:1,game_id:4)
Comments.create(content:"Fish Game is the best!",user_id:1,game_id:2,likes:3)
Comments.create(content:"Such riveting graphics, the fish jump right out at you!",user_id:2,game_id:2,likes:1)
Comments.create(content:"First!",user_id:3,game_id:2,likes: -123)
Comments.create(content:"well almost...",user_id:3,game_id:2,likes:2)
Comments.create(content:"The plot was overwhelming and intricate, I cried.",user_id:3,game_id:2,likes:1)
Comments.create(content:"second page",user_id:1,game_id:2,likes:3)
Comments.create(content:"meow",user_id:1,game_id:2,likes:1)
Comments.create(content:"meow",user_id:2,game_id:1,likes:2)
Comments.create(content:"MEOW",user_id:3,game_id:1,likes:3)
Comments.create(content:"meow?",user_id:2,game_id:1,likes:2)
Comments.create(content:"meow.",user_id:1,game_id:1,likes:3)
Comments.create(content:"meow.",user_id:1,game_id:4,likes:3)
Message.create(title:"spam",content:"more spam",recipient:1,sender:2)
Message.create(title:"spams",content:"more pam",recipient:1,sender:3)
Message.create(title:"spammer",content:"moe spam",recipient:3,sender:2)
Message.create(title:"spamalot",content:"mre spam",recipient:3,sender:1)
Message.create(title:"spamming",content:"ore spam",recipient:2,sender:1)
Message.create(title:"spammy",content:"mor spam",recipient:2,sender:3)

  			Game.find(4).update_attribute(:times_played,Score.where(game_id:4).count)

  			Game.find(3).update_attribute(:times_played,Score.where(game_id:3).count)

  			Game.find(2).update_attribute(:times_played,Score.where(game_id:2).count)

  			Game.find(1).update_attribute(:times_played,Score.where(game_id:1).count)