$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rubygems'
require 'sinatra'
require 'haml'

require 'lib/game'
require 'view_helper'


get '/' do
   haml :index, :locals => { :user_choice => nil, :computer_choice => nil,
      :result => nil }
end

post '/' do
  game = Game.new(params[:choice].chomp.to_i)
  result = game.fight!

  haml :index, :locals => { :result => result, :user_choice => game.user_choice.to_s,
      :computer_choice => game.computer_choice.to_s }
end
