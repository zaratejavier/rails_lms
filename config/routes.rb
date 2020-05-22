Rails.application.routes.draw do

  root 'courses#index'

  resources :users
  resources :courses do
    resources :enrollments, only: [:index, :new, :create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

