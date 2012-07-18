PoketWorks::Application.routes.draw do
  root :to => 'welcome#index'
  get "welcome/index"

	# for omniauth settings
	match 'auth/:provider/callback' => 'sessions#callback'
	match '/logout' => 'sessions#destroy', :as => :logout
end
