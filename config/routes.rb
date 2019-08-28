Rails.application.routes.draw do
  resources :images
  root to: "welcome#index"
  resources :welcome, only: [:index]
  resources :prompts do
    resources :crowd_stories
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
