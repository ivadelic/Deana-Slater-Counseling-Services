Rails.application.routes.draw do
  # get 'therapists/index'

  # get 'therapists/edit'

  # get 'therapists/new'

  root :to => "homes#index"

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "admin" => "sessions#new", :as => "admin"
  #get "sign_up" => "admins#new", :as => "sign_up"

  # get "about" => "abouts#index", :as => "about"
  # get "contact_location" => "contacts#index", :as => "contact_location"

  resources :admins, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :abouts
  resources :resources
  resources :faqs, :our_therapists
  resources :contacts
  resources :homes, only: [:edit, :index, :show]
  resources :therapists

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
