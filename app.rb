# file path: DSimons/WDI/01 15 2014/app.rb

# Rack is a middleware that talks to the web server
require "rack"

class HelloWorld

	def call(environment_var)
		# 200 is the response code (means "OK")
		return [200, {"Content-Type" => "text/html"}, ["Hello World!"]]
	end

end

Rack::Handler::WEBrick.run(HelloWorld.new, :Port => 8000)