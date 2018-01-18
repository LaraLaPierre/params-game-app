class GamesController < ApplicationController
  def params_game_method 
    input_message = params[:my_message]
    name_array = input_message.split("") 
      if name_array[0] == "a"
        output_message = "Your name beings with the first letter of the alphabet!"
      else
        output_message = "Yo thats a cool name!"
      end
    render json: [message: output_message]
  end

  def numbers_game_method 
    app_number = 34
    input_number = params[:my_number].to_i 
      if input_number > app_number
        output_message = "Too high!"
      elsif input_number < app_number
        output_message = "Too low"
      else 
        output_message = "You got it!"
      end 
    render json: {guess: input_number, message: output_message}
  end 
end 
