class Post < ActiveRecord::Base

  belongs_to :blog
  has_many :messages, :dependent => :delete_all
end
