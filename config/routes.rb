Rails.application.routes.draw do
  root to: "static_pages#index"

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  post '/upload_from_url', to: 'dropbox#upload_from_url'
  post '/upload_from_file', to: 'dropbox#upload_from_file'
end
