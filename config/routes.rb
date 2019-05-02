Rails.application.routes.draw do
  # get 'kills', :as 'kills/index'
  get 'users/create'
  get '/kills' => 'kills#index', :as => 'kills'
  get '/games' => 'games#index', :as => 'games'
  get '/users' => 'users#index', :as => 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
