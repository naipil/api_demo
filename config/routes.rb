Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do 
  	resources :teachers
  end
  namespace :api do
  	resources :students
  	resources :teachers
  end
end
