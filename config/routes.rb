LearnRails::Application.routes.draw do
  resources :services
  resources :webs
  resources :advertisements

  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
