Rails.application.routes.draw do
  root to: "welcome#index"
  resources :welcome
  resources :crowd_stories, only: [:index]
  resources :prompts, only: [:index, :show] do
    resources :crowd_stories, except: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
