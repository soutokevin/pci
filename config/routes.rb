Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/alunos'
  get 'welcome/clients'
  get 'services/management'
  get 'services/engineering'
  get 'services/legal'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
