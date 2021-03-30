Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  resources :tweets
  devise_for :users  
  resources :likes
  namespace :admin do
    resources :users do
      resources :tweets do
        resources :likes     
      end
    end
  end

  namespace :admin do
    resources :users do
      resources :likes 
    end
  end

  namespace :admin do
    resources :tweets do
      resources :likes
    end
  end

  root 'tweets#index'
end

#root 'admin/dashboard#index'  
