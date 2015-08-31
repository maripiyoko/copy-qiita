CopyQiita::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'home', to: 'home#show'
end
