require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :index
    end


     get "/new" do
        erb :create_puppy
    end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    # binding.pry
    @puppy.name = params[:name]
    @puppy.breed = params[:breed]
    @puppy.age = params[:age]
    erb :display_puppy
  end

 end	end
end	