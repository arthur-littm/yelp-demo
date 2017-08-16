Rails.application.routes.draw do
  namespace :admin do
    get 'restaurants/index'
  end

  get 'reviews/new'

  root 'restaurants#index'

  # localhost:3000/restaurants/top
  # get 'restaurants/top', to: 'restaurants#top'


  # localhost:3000/restaurants/1/chef
  # get 'restaurants/:id/chef', to: 'restaurants#chef'


  resources :restaurants do
    collection do
      get 'top', to: 'restaurants#top'
    end

    member do
      get 'chef', to: 'restaurants#chef'
    end

    resources :reviews, only: [:create, :new]

  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end
end
