default:
	bin/rails server

install:
	bin/rails generate model User name:string email:string age:integer gender:string description:text interested_in:text tags:text picture:binary
	bundle exec rake db:migrate
