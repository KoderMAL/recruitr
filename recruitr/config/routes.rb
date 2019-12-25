Rails.application.routes.draw do
  resources :participants do
    resources :available_positions
  end
  get 'welcome/index'
  resources :available_positions do
    resources :skills
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
