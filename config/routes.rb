Rails.application.routes.draw do
  resources :crowd_stories
  resources :prompts, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
