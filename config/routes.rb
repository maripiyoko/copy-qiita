CopyQiita::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#index'
  get 'home', to: 'home#show'

  namespace :user do
    resources :items
  end
end
