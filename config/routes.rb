Rails.application.routes.draw do
  resources :supplies
  root 'welcome#index'
  get 'welcome/index'
  resources :occurences
  resources :requests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
