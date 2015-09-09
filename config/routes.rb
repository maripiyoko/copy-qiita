CopyQiita::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'welcome#index'
  get 'items', to: 'items#index'
  resources :items, only: [ :show ]

  namespace :user do
    resources :items, except: [ :show ]
  end

  with_options controller: 'user/stocks' do |s|
    s.post 'user/item/:item_id/stocks', to: :create, as: :stock_create
    s.delete 'user/item/:item_id/stocks', to: :destroy, as: :stock_destroy
  end

end
