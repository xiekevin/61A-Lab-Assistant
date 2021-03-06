Rails.application.routes.draw do
  
  devise_scope :admin do
    root to: "home#index"
  end
  devise_for :admins
  devise_for :teaching_assistants
  devise_for :lab_assistants

  namespace :admins, as: :admin do
    resource :dashboard, only: :show, controller: "dashboard"
  end

  namespace :teaching_assistants, as: :teaching_assistants do
    resource :dashboard, only: :show, controller: "dashboard"
  end

  scope module: :admins do
    resources :admins, only: [:edit, :update] do
	  # 
    end
  end

  resources :lab_assistants
  resources :teaching_assistants
  resources :check_in_forms

  match 'admins/dashboard', to:'admins/dashboard#show', via: [:get, :post]

end
