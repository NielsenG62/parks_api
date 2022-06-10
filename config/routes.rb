Rails.application.routes.draw do
  resources :parks do
    resources :sport_climbs
    resources :trad_climbs
  end
  post 'authenticate', to: 'authentication#authenticate'
end
