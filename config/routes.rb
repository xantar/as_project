AsProject::Application.routes.draw do
  resources :treatments, :except => [ :show ]

  resources :hatches, :except => [ :show ]

  resources :medications

  resources :locations

  resources :sources

  resources :groups 

  resources :statuses

  resources :sources

  resources :clutches, :shallow => true do

    resources :hatches, :except => [ :index, :show ]

  end

  resources :morph_types

  resources :morphs, :except => [ :index, :show]

  resources :weight_types

  resources :weights

  match '/dragons/all' => 'dragons#all'

  resources :dragons do

    resources :weights, :only => :new

    resources :morphs, :only => :new

    resources :clutches, :only => :new

    resources :treatments, :only => :new

    resources :locations, :only => :new

  end

  match '/dragons/:id/loc_history' => 'dragons#lhistory'

  match '/dragons/:id/weight_history' => 'dragons#whistory'

  match 'user/edit' => 'users#edit', :as => :edit_current_user

  match 'signup' => 'users#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login

  resources :sessions

  resources :users

  root :to => "dragons#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
