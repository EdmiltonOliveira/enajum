Rails.application.routes.draw do

  namespace :admin do
    resources :home, only: [:index]
  end

  namespace :admin do
    resources :perguntas, except: [:show]
  end

  namespace :admin do
    resources :fotos, except: [:show]
  end

  namespace :admin do
    resources :inscritos
  end
  namespace :admin do
    resources :grupos
  end
  namespace :admin do
    resources :palestrantes, except: [:show]
  end

  devise_for :users, skip: [ :registration, :confirmations ]

  root to: 'home#index'

  resources :inscritos, only: [:index]
  resources :realizadores, only: [:index]
  resources :apoiadores, only: [:index]
  resources :grupos, only: [:index]
  resources :fotos, only: [:index]
  resources :palestrantes, only: [:index]
  resources :programacao, only: [:index]

end
