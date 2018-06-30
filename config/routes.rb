Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}

  resources :esports
  resources :motogps
  resources :moto_gps
  resources :moto2s
  resources :moto3s
  resources :formula1s
  resources :basketballs
  resources :footballs

  get 'esport' => 'esport#index', as: '_esport'
  get 'motogp' => 'motogp#index', as: '_motogp'
  get 'moto2' => 'moto2#index', as: '_moto2'
  get 'moto3' => 'moto3#index', as: '_moto3'
  get 'formula1' => 'formula1#index', as: '_formula1'
  get 'football' => 'football#index', as: '_football'
  get 'basketball' => 'basketball#index', as: '_basketball'

  get 'about_us' => 'application#about_us', as: 'about_us'
  get 'about_our_work' => 'application#about_our_work', as: 'about_our_work'

  get 'admin' => redirect('/users/sign_in')

  root 'home#index'
end
