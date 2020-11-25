Rails.application.routes.draw do
  	devise_for :podcasts

	resources :podcasts, only: [:index, :show] do
		# I added  resources :episodes inside podcast 
		# because its belong to podcast and not in its own like if its belong to user
		resources :episodes 
	end
	
	#if the user login go to dashboard if NOT root "welcome#index"
	authenticated :podcast do
		root 'podcasts#dashboard', as: "authenticated_root"
	end
	root "welcome#index"
end
