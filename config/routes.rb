Rails.application.routes.draw do

    resources :users, only: [:show] do
        resources :items, only: [:create, :destroy]    
    end

    get 'welcome/about'
    
    root 'welcome#index'
    
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
