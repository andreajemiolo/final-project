require 'bundler'
Bundler.require

require './models/model.rb'



class MyApp < Sinatra::Base

  get '/' do
    #@emotions = ["destructive", "procrastinatory", "tense", "disgruntled", "helpful", "bored", "artsy", "musical", "troubled",     "lonely", "hungry", "fat", "crafty"]
    erb :index
  end
  
  post '/results' do
    @emotion = params[:emotion]
    erb :results
  end

  
end