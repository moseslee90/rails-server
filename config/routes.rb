Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products', to: 'products#index'
  post 'products', to: 'products#create'
  post 'family', to: 'households#create'
  get 'family/:id', to: 'households#show'
end
