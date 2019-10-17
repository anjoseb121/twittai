Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[show] do
        resources :tweets, only: %i[index create]
        member do
          get 'followers'
          post 'follow'
          post 'unfollow'
        end
      end
    end
  end
end
