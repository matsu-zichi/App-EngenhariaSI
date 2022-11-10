Rails.application.routes.draw do

  root 'home#index'
  
  resources :ambientes do
    collection do
      get 'list'
    end
    resources :lembretes do
      resources :subitem
    end
  end

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end
