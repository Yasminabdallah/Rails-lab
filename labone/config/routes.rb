Rails.application.routes.draw do
  resources :books
  resources :users do
    collection do
      get :male

    end 

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
