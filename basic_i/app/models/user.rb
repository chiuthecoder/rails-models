class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :age, presence: true, numericality: { only_integer: true }
  validates_numericality_of :age, less_than: 150
  validates_numericality_of :age, greater_than: 10
  before_save do
    self.email_address.downcase!
  end
end
