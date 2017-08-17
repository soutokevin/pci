Rails.application.routes.draw do

  devise_for :users, path: 'auth'
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  get 'pages/callback/:id/' => 'pages#callback'
  mount Attachinary::Engine => "/attachinary"

  resources :pages, only: [:show] do
  	resources :page_parts do
  		resources :contents
  	end
  end
  get 'contents/search_content' => 'pages#search', as: :search
  root 'pages#show', :id => '1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
