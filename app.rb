require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @result = params[:num1].to_i * params[:num2].to_i
    "#{@result}"
  end

  get "/greeting/:fname/:lname" do
      @firstname = params[:fname]
      @lastname = params[:lname]
      "Your first name is #{@firstname} and your last name is #{@lastname}"
  end

  get "/location/:state/:zipcode/:city" do
    @state = params[:state]
    @zipcode = params[:zipcode].to_i
    @city = params[:city]
      "Your State is: #{@state}" + "\nyour Zipcode is: #{@zipcode}\n" + " and your City is: #{@city}"
  end
end