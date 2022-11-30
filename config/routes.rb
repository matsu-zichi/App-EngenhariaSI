Rails.application.routes.draw do

  root 'home#index'
  
  resources :user do
    resources :ambientes do
      collection do
        get 'list'
      end
      resources :lembretes do
        resources :subitems
      end
    end
  end

  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
end
