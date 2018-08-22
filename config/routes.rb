Rails.application.routes.draw do
  resources :restaurants do
    member do
      get 'chef', to: "restaurants#chef"
    end
    collection do
    get 'top', to: "restaurants#top"
    end
    resources :reviews,only: [:new, :create]
  end
  resources :reviews, except: [:new,:create,:index]
end
