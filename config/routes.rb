Rails.application.routes.draw do
get '/api/notes' => 'notes#index'
get '/api/notes/tag/:name' => 'tags#show'
post '/api/notes' => 'notes#create'
post '/api/users' => 'users#create'

end
