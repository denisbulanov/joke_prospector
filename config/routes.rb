Rails.application.routes.draw do
  # Routes for the Secondstory resource:
  # CREATE
  get "/secondstories/new", :controller => "secondstories", :action => "new"
  post "/create_secondstory", :controller => "secondstories", :action => "create"

  # READ
  get "/secondstories", :controller => "secondstories", :action => "index"
  get "/secondstories/:id", :controller => "secondstories", :action => "show"

  # UPDATE
  get "/secondstories/:id/edit", :controller => "secondstories", :action => "edit"
  post "/update_secondstory/:id", :controller => "secondstories", :action => "update"

  # DELETE
  get "/delete_secondstory/:id", :controller => "secondstories", :action => "destroy"
  #------------------------------

  # Routes for the Reinterpretation resource:
  # CREATE
  get "/reinterpretations/new", :controller => "reinterpretations", :action => "new"
  post "/create_reinterpretation", :controller => "reinterpretations", :action => "create"

  # READ
  get "/reinterpretations", :controller => "reinterpretations", :action => "index"
  get "/reinterpretations/:id", :controller => "reinterpretations", :action => "show"

  # UPDATE
  get "/reinterpretations/:id/edit", :controller => "reinterpretations", :action => "edit"
  post "/update_reinterpretation/:id", :controller => "reinterpretations", :action => "update"

  # DELETE
  get "/delete_reinterpretation/:id", :controller => "reinterpretations", :action => "destroy"
  #------------------------------

  # Routes for the Assumption resource:
  # CREATE
  get "/assumptions/new", :controller => "assumptions", :action => "new"
  post "/create_assumption", :controller => "assumptions", :action => "create"

  # READ
  get "/assumptions", :controller => "assumptions", :action => "index"
  get "/assumptions/:id", :controller => "assumptions", :action => "show"

  # UPDATE
  get "/assumptions/:id/edit", :controller => "assumptions", :action => "edit"
  post "/update_assumption/:id", :controller => "assumptions", :action => "update"

  # DELETE
  get "/delete_assumption/:id", :controller => "assumptions", :action => "destroy"
  #------------------------------

  # Routes for the Setup resource:
  # CREATE
  get "/setups/new", :controller => "setups", :action => "new"
  post "/create_setup", :controller => "setups", :action => "create"

  # READ
  get "/setups", :controller => "setups", :action => "index"
  get "/setups/:id", :controller => "setups", :action => "show"

  # UPDATE
  get "/setups/:id/edit", :controller => "setups", :action => "edit"
  post "/update_setup/:id", :controller => "setups", :action => "update"

  # DELETE
  get "/delete_setup/:id", :controller => "setups", :action => "destroy"
  #------------------------------

  devise_for :users
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
