Rails.application.routes.draw do
  apipie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
		namespace :v1 do
			resources :profiles
			resources :wares
			resources :ware_sales
		end
	end
end
