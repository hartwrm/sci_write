Rails.application.routes.draw do
  root to: "welcome#index"
  resources :sendimages
  resources :welcome, only: [:index]
  resources :prompts, only: [:index, :show] do
    resources :crowd_stories
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
