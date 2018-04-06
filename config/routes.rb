Rails.application.routes.draw do
  resources :completed_tasks
  resources :tasks
  resources :user_prescriptions
  scope "/auth" do
    mount RailsAdmin::Engine => '/support_panel', as: 'rails_admin'
  end
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: redirect("/auth/support_panel")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
