require './config/environment'
require './app/models/questions'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :home
  end
  
  get '/summary' do
    erb :summary
  end
  
  get '/books' do
    erb :books
  end
  
  get '/movie' do
    erb :movie
  end
  
  get '/housequiz' do
    erb :housequiz
  end
  
  get '/otherpages' do
    erb :otherpages
  end
  
  get '/characters' do
    erb :characters
  end
  
   get '/questions' do
   erb :questions
 end
 
 get '/charquiz' do
     erb :charquiz
 end
 
 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

    @anything = character_chooser(@total)
   if @anything == "Neville Longbottom"
     erb :Neville_Longbottom
   elsif @anything == "Bellatrix Lestrange"
     erb :Bellatrix_Lestrange
   elsif @anything == "Aberforth Dumbledore"
     erb :Aberforth_Dumbledore
     elsif @anything == "Draco Malfoy"
     erb :Draco_Malfoy
     elsif @anything == "Luna Lovegood"
     erb :LunaLovegood
     elsif @anything == "Severus Snape"
     erb :Severus_Snape
     elsif @anything == "Dolores Umbridge"
     erb :Dolores_Umbridge
     elsif @anything == "Voldemort"
     erb :Voldemort
     elsif @anything == "Ginny Weasley"
     erb :Ginny_Weasley
    end
end
  
end
