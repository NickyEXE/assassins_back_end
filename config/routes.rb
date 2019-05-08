Rails.application.routes.draw do
  # get 'kills', :as 'kills/index'
  post '/users/create' => 'users#create'
  # post '/games/start' => 'games#start_game'
  post '/games/create' => 'games#create'
  post '/users/login' => 'users#login'
  post '/games/add_users' => 'games#add_users_to_game'
  patch '/users/:id/locate' => 'users#locate'
  patch '/users/:id/leave_game' => 'users#leave_game'
  patch '/users/:id/kill_target' => 'users#kill_target'
  patch '/users/:id/self_defense' => 'users#self_defense'
  get '/users/unassigned' => 'users#unassigned_users', :as => 'unassigned_users'
  get '/kills' => 'kills#index', :as => 'kills'
  get '/games' => 'games#index', :as => 'games'

  post '/kills/:id/stats' => 'kills#stats'
  get '/users/auto_login' => 'users#auto_login'
  get '/users' => 'users#index', :as => 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
