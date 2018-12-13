require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get "/" do 
        erb :index
    end

    get '/new' do
        # binding.pry
         @student = Puppy.new(params["name"],params["breed"], params["age"])
        erb :create_puppy
    end

    post "/puppy" do
        # binding.pry
        # params => {"name"=>"cooby", "breed"=>"poodle", "age"=>"7"}
        #this is all the information of the instance of puppy so i need to create and save this instance and 
        #pass in an the whole object
        puppy = Puppy.new(params["name"],params["breed"], params["age"])
        @name = puppy.name
        @breed = puppy.breed
        @age = puppy.age
        erb :display_puppy
    end
end
