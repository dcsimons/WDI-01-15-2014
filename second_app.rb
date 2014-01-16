# file path: DSimons/WDI/01 15 2014/second_app.rb

require "sinatra"
require "sinatra/reloader"

MY_USERS = [ {name: "John"}, {name: "Jane"}]

get "/users" do
	users = ""
	MY_USERS.each do |user|
		users += "<h2> #{user[:name]} </h2><br>"
	end
	return users
end

get "/users/:id" do
	id = params[:id].to_i
	MY_USERS[id][:name]
end