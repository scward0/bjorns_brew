Rails.application.routes.draw do

  namespace :admin do
    get "/" => "base#index"
    resources :pet_of_the_weeks
    resources :posts
  end

  resources :pet_of_the_weeks
  resources :posts
  root 'welcome#index'
end
