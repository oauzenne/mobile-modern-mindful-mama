Rails.application.routes.draw do
  default_url_options host: 'localhost:3000'
  resources :mothers
  resources :milkings
  resources :locations

  post '/login', to: 'mothers#authenticate'

end
