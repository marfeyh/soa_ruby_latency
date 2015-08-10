require 'sinatra'

class HTTPAuthApp < Sinatra::Base
  
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == 'Alladin' and password == 'password'
  end
  
  get '/' do
    sleep(5.seconds)
    "Hello, Alladin!"
  end

end
