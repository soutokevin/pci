Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :pages do
  	resources :page_parts do
  		resources :contents
  	end
  end

  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/students'
  get 'welcome/clients'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
