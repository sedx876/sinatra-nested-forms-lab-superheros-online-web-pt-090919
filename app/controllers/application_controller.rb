require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end


    post '/teams' do
      @name = params[:team][:name]
      @motto = params[:team][:motto]
      @super_heros = params[:team][:members]

      erb :team
    end

end
