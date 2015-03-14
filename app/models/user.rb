class User < ActiveRecord::Base
	attr_accessor :email,
	has_secure_password
	validates :name, :presence => true
	validates :email, :presence => true, :uniqueness => true
	validates :age, :presence => true
	validates :gender, :presence => true
	validates_length_of :password, :in => 6..20, :on => :create

end
