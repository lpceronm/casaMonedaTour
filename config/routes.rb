Rails.application.routes.draw do
  resources :coins do
    collection do
      get "museum", to: 'coins/museum'
    end
   
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
