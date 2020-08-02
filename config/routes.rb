Rails.application.routes.draw do
	devise_for :restaurants
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :drink_categories, only: [:index, :create, :update, :destroy]
	resources :food_categories, only: [:index, :create, :update, :destroy]
  	resources :drink_menus, only: [:index, :create, :edit, :update, :destroy, :new]
  	resources :food_menus, only: [:index, :create, :edit, :update, :destroy, :new]
  	resources :informations
  	resources :restaurants, only: [:show, :update, :edit]
  	resources :restaurant_images

end
