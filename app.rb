require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = PigLatinizer.new
    @piglatinized = word.to_piglatin(params[:user_phrase])

    erb :piglatinized
  end
end
