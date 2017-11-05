Rails.application.routes.draw do
  resources :notes, param: :slug
  root 'notes#index' 
  get '/notes/:slug/info', to: 'notes#info'
  post '/notes/api', to: 'notes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
