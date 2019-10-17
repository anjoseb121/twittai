Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show] do
        member do
          post 'follow'
          post 'unfollow'
        end
      end
    end
  end
end
