require_relative 'config/environment'

class App < Sinatra::Base

  get '/user_input' do
    erb :user_input
  end

  post 'user_input' do
    @pigged = PigLatinizer.new(params[:user_input])
    erb :results
  end

end
