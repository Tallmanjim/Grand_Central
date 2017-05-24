Rails.application.routes.draw do
  resources :companies
  # get 'welcome/index'

  devise_for :users
	root 'companies#index'
end
