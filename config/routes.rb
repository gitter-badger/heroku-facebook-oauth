PoketWorks::Application.routes.draw do
  resources :works

  root :to => 'welcome#index'
  get "welcome/index"
  resources :profiles

	# for omniauth settings
	match 'auth/:provider/callback' => 'sessions#callback'
	match '/logout' => 'sessions#destroy', :as => :logout
end
