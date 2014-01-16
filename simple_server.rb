# file path:  DSimons/WDI/01 15 2014/simple_server.rb

# Require the Webrick server
require "webrick"

# Get the path for the server using the relative directory specified
root = File.expand_path(".")
# Create a new instance of a webrick server and pass it two parameters
# :Port is the port we will access the server at in the browser
server = WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => root)
# Go to localhost:8000

# When a user requests /hello, the response will be "Hello world!"
# Request will be written or typed as "localhost:8000/hello" int the browser
server.mount_proc "/hello" do |request, response|
	response.body = "#{request.host}, #{request.port}"
end



trap "INT" do
	server.shutdown
end
server.start

