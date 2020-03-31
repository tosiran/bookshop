Rails.application.routes.draw do
  get 'card/new'

  get 'card/show'

  root to: 'users#index'
  get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
