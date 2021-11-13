Rails.application.routes.draw do
  resources :students
  devise_for :staff
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  get 'dashboard' => 'dashboard#index', as: :dashboard
end
