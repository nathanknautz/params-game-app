class ParamsController < ApplicationController

  def name_action
    input_name = params[:name]
    input_name.upcase!

    if input_name[0] == 'A'
      message = "Hey your name begins with the first letter of the alphabet!"
    else
      message = ""
    end 
    
    render json: {your_name: input_name, special_message: message}
  end
  
  def guess_game
    input_guess = params[:guess].to_i
    num = 50

    if input_guess == num 
      message_2 = "You got it!"
    elsif input_guess < num
      message_2 = "Too low, guess higher!"
    else
      message_2 = "Too high, guess lower!"
    end

    render json: {guess: input_guess, answer: message_2}
  end
end
