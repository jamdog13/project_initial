class Game < ActiveRecord::Base
	has_many :achievements
	has_many :scores
	has_many :comments
end
