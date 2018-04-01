require_relative 'config/environment'
require 'pry'
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

  get "/multipy/:num1/:num2" do
    binding.pry
    @num1 = params[:num1]
    @num2 = params[:num2]
    
  end

end
