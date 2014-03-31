require 'sinatra/base'

class ProductApp < Sinatra::Application
  get '/' do
    "Welcome"
  end
end