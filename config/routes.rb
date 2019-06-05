Rails.application.routes.draw do
  namespace :api do
    resources :food_trucks, only: [ :index ], :path => '/food-trucks'
  end
end
