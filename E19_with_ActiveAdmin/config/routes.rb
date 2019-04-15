Rails.application.routes.draw do
 
  resources :projects
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  root to: "admin/dashboard#index"
  
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     registrations: 'users/registrations'
   }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
