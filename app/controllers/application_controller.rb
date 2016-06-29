require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1_name = params[:team][:hero][0][:name]
      @hero_1_bio = params[:team][:hero][0][:biography]
      @hero_1_power = params[:team][:hero][0][:power]
      @hero_2_name = params[:team][:hero][1][:name]
      @hero_2_bio = params[:team][:hero][1][:biography]
      @hero_2_power = params[:team][:hero][1][:power]
      @hero_3_name = params[:team][:hero][2][:name]
      @hero_3_bio = params[:team][:hero][2][:biography]
      @hero_3_power = params[:team][:hero][2][:power]

      erb :team
    end



end
