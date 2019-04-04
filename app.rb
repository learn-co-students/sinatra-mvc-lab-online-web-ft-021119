require_relative 'config/environment'

class App < Sinatra::Base
	get '/' do 
		erb :user_input
	end
	post '/piglatinize' do
		@word = params["user_phrase"]

		new_word = PigLatinizer.new
		@pl = new_word.piglatinize(@word)

		erb :pig_latin_display

 end




end