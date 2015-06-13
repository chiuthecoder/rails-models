class Dojo < ActiveRecord::Base
	has_many :ninjas
	validates :name, presence: true, length:{ minimum: 2 }
end
