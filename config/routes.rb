Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  get 'users/create'
  get 'users/destroy'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
