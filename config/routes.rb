Rails.application.routes.draw do
  get '/names_url' => 'params#name_action'
  get '/games_url' => 'params#guess_game'
  get '/segment_games/url/:guess' => 'params#segment_games'

end
