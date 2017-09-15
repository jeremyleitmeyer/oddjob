Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { registrations: 'registrations' }
  devise_scope :users { get 'users/:id', to: 'users#show', as:'user'}
	root to: "home#index"
	resources :jobs, :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
