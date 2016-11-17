Rails.application.routes.draw do
  root to: 'search#index', as: 'search'

  resources :recipes do
    resources :ingredients
  end
end
