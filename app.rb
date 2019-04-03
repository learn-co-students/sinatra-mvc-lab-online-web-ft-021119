require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do 
        x = PigLatinizer.new
        @text = x.piglatinize(params[:user_phrase])
        # binding.pry

        erb :piglatinize

    end
end