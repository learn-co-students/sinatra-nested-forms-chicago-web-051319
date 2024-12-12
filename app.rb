require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirates' do
      erb :'/pirates'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each {|ship_detail|
        Ship.new(ship_detail)
      }
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
