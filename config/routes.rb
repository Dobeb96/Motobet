Rails.application.routes.draw do
  resources :formula1s

  get 'formula1' => 'formula1#index'

  root 'application#index'
end
