Rails.application.routes.draw do
  resources :group_friends
  resources :groups
  resources :order_friends
  resources :orders
  resources :friendships
  post 'friendships/add_friend_by_name', to: 'friendships#add_friend_by_name'
  post 'order_friends/notifications_seen', to: 'order_friends#notifications_seen'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  get 'welcome/index'
  root 'welcome#index'
end
