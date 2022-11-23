Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :books, only:[:index, :create, :show, :edit, :update, :destroy]
  resources :users, only:[:index, :show, :edit, :update]

  get 'home/about' => 'homes#about', as: :about
end
