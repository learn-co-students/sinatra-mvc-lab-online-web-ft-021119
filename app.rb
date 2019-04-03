require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params[:user_phrase]

    @phrase = PigLatinizer.new.piglatinize(user_input)

    erb :piglatinize
  end
end
