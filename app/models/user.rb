class User < ActiveRecord::Base
	attr_accessor :password, :email, :password_confirmation
	has_secure_password
	validates :name, :presence => true
	validates :email, :presence => true, :uniqueness => true
	validates_presence_of :password, :on => :create
	validates :age, :presence => true
	validates :gender, :presence => true
	validates_length_of :password, :in => 6..20, :on => :create

end
