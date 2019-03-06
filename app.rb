require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessons
        set :session_secret, "secret"

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        session[:item] = params["item"]
        erb :checkout
end
end
end
