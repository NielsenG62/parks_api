Rails.application.routes.draw do
  root to: 'parks#index'
  resources :parks do
    resources :sport_climbs
    resources :trad_climbs
  end
end
