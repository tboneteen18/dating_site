Rails.application.routes.draw do

get 'users/new'

get 'sessions/new'

root 'pages#home'

get '/edit' => 'users#edit'
get '/list' => 'users#index'
get '/show' => 'users#show'
post '/edit' => 'users#update'
patch '/' => 'users#update'
put '/users' => 'users#update'

#this is the routes for the session that is made for a user
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

#this is the routes that are for the users
get '/signup' =>  'users#new'
post '/signup' => 'users#create'

end
