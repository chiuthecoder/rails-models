class User < ActiveRecord::Base
	has_many :posts
	has_many :messages
	has_many :owners
	has_many :blogs, :through => :owners
	#ploymorphism
	has_many :comments, :as => :commentable
	#self-join
	has_many :friendships
	has_many :friends, foreign_key: "friend_id", class_name: "User", through: :friendships
	#belongs_to :friend, class: User
end
