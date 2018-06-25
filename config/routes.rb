Rails.application.routes.draw do
  get 'home/index'

  resources :esports
  resources :motogps
  resources :moto_gps
  resources :moto2s
  resources :moto3s
  resources :formula1s

  get 'esport' => 'esport#index'
  get 'motogp' => 'motogp#index'
  get 'moto2' => 'moto2#index'
  get 'moto3' => 'moto3#index'
  get 'formula1' => 'formula1#index'

  get 'about_us' => 'application#about_us'
  get 'about_our_work' => 'application#about_our_work'

  root 'application#index'
end
