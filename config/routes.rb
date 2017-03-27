Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/calendar/', to: 'calendars#show'

  root to: 'pages#home'

  resources :events
end
