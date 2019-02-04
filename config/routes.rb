Rails.application.routes.draw do
  devise_for :users

  post 'get_surf', to: 'msws#search'

  root to: "home#index"
end
