Rails.application.routes.draw do
 get '/params_game_url' => 'games#params_game_method'
 get '/numbers_game_url/:my_number' => 'games#numbers_game_method'
end
