Rails.application.routes.draw do
  resources :score_cards
  resources :meetings
  resources :participants do
    resource :available_position, except: :show, path_names: { edit: "" }
    resource :meeting
    resources :score_cards
  end
  get 'welcome/index'
  resources :available_positions do
    resources :skills
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
