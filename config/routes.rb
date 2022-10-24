Rails.application.routes.draw do
  resources :products
  
  devise_for :users
  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  root 'home#index'
end
