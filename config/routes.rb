Rails.application.routes.draw do
get '/api/notes' => 'notes#index'
get '/api/notes/tag/:name' => 'tags#name'
# post '/api/notes'
# get '/api/notes/tag/Triple-buffered'
# post '/api/users'

end
