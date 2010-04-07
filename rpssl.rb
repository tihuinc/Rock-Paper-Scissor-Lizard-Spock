require 'rubygems'
require 'sinatra'
require 'haml'

require 'lib/game'

helpers do
  def item_image(user_choice, computer_choice, item)
    if user_choice && user_choice.to_s == item
      src_image = "#{item}_user"
      "<img id='#{item}_image' src='images/#{item}_user.png' />"
    elsif computer_choice && computer_choice.to_s == item
      src_image = "#{item}_computer"
    else
      src_image = "#{item}"
    end

    "<img id='#{item}_image' src='images/#{src_image}.png' />"
  end
end


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