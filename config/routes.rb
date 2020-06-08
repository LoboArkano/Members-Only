Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"
end
