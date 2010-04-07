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