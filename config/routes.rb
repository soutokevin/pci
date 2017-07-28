Rails.application.routes.draw do
  resources :contents
  resources :page_parts
  resources :pages
  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/students'
  get 'welcome/clients'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
