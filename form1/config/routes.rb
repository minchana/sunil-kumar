Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get "/user/new" => "users#new", as: :user_new
  post '/user/new'=>"users#create", as: :user_create
  get  "/users/index"=> "users#index", as: :users_list
  get  "/user/:id/edit" => "users#edit", as: :user_edit
  put  "/user/:id/edit"=> "users#update", as: :user_update
  delete "/user/:id"  =>"users#destroy", as: :user_destroy
  get  "/user/:id/show" =>"users#show", as: :user_show

  get "/project/new" => "projects#new", as: :project_new
  post '/project/new'=>"projects#create", as: :project_create
  get  "/projects/index"=> "projects#index", as: :projects_list
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
