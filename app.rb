require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/new' do
      erb :'pirates/new'
    end


    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      # What's wrong with this code??
      # params[:pirate][:ships].each do |ship|
      #   Ship.new(params[:pirate][:ships][][:name],params[:pirate][:ships][][:type],params[:pirate][:ships][][:booty])
      # end

      erb :'pirates/show'
    end

  end
end
