class ParamsController < ApplicationController
  def query_params_game
    input_name = params[:name]
    input_guess = params[:guess].to_i
    input_name.upcase!
    if input_name[0] == 'A'
      message = "Hey your name begins with the first letter of the alphabet!"
    else
      message = ""
    end 
    num = 50
    if input_guess == num 
      message_2 = "You got it!"
    elsif input_guess < num
      message_2 = "Too low, guess higher!"
    else
      message_2 = "Too high, guess lower!"
    end
    render json: {name: input_name, special_message: message, guess: input_guess, answer: message_2}

  end
end
