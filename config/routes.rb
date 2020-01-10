Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      resources :pomodoros
    end
  end
  namespace :api do
    namespace :v1 do
      resources :tasks
    end
  end
  namespace :api do
    namespace :v1 do
      resources :lists
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
