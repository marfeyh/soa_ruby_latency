require 'sinatra'

class HTTPAuthApp < Sinatra::Base
  
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == 'Alladin' and password == 'password'
  end

  get '/' do
    "Hello, Alladin!"
  end

end
