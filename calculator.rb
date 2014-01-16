# file path: DSimons/WDI/01 15 2014/second_app.rb

require "sinatra"
require "sinatra/reloader"

get "/add/:num1/:num2" do
	sum = params[:num1].to_f + params[:num2].to_f
	"#{params[:num1]} + #{params[:num2]} = #{sum}<br>"
end

get "/subtract/:num1/:num2" do
	difference = params[:num1].to_f - params[:num2].to_f
	"#{params[:num1]} - #{params[:num2]} = #{difference}<br>"
end

get "/multiply/:num1/:num2" do
	product = params[:num1].to_f * params[:num2].to_f
	"#{params[:num1]} x #{params[:num2]} = #{product}<br>"
end

get "/divide/:num1/:num2" do
	if params[:num2].to_f == 0
		"Error!  Cannot divide by 0."
	else
		quotient = params[:num1].to_f / params[:num2].to_f
		"#{params[:num1]} / #{params[:num2]} = #{quotient}<br>"
	end
end


# 	MY_USERS.each do |user|
# 		users += "<h2> #{user[:name]} </h2><br>"
# 	end
# 	return users
# end