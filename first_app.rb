# file path: DSimons/WDI/01 15 2014/first_app.rb

require "sinatra"
require "sinatra/reloader"

# inside the "" after get is the path, location or route to which you are requesting
get "/" do
	"Hello world!"
end

get "/blah" do
	"Blah Blah Blah"
end

get "/hello" do
	"Helloooooooo Nurse"
end

get "/hello/world" do
	"Hello World!!!!!"
end

get "/hello/:name" do
	"Hello #{params[:name]}"
end