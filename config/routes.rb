Rails.application.routes.draw do
  
  resources :tweets, only: :index

  root to: 'users#index'
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end


resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
end