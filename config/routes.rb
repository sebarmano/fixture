Rails.application.routes.draw do
  get 'groups/show'
  resources :groups, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
