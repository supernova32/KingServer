KingServer::Application.routes.draw do

  namespace :api do
    namespace :v1  do
      resources :tokens, only: [:create, :destroy]
      resources :locations, only: [:create]
      post '/check_in' => 'check_in_rooms#check_in', format: :json
      post '/user_info' => 'users#my_info', format: :json
      post '/room_info' => 'check_in_rooms#get_room_info', format: :json
      post '/location_info' => 'check_in_rooms#get_location_info', format: :json
      post '/hidden_check' => 'check_in_rooms#hidden_check_in', format: :json
      post '/hidden_locations' => 'check_in_rooms#get_close_locations', format: :json
      post '/room_stats' => 'check_in_rooms#get_room_stats', format: :json
    end
  end

  scope '(:locale)' do
    resources :hidden_locations
    resources :buildings
    resources :study_courses
    resources :rooms
    devise_for :users
    resources :users

    get '/admin' => 'study_courses#admin_home', as: 'admin'
    get '/rooms/:id/get_image' => 'rooms#get_image', as: 'get_image'
    get '/room_info/:building_id/:number' => 'study_courses#room_chart'
    get '/statistics' => 'study_courses#statistics', as: 'statistics'

    root to: 'study_courses#home'

  end



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
  # match ':controller(/:action(/:id))(.:format)'
end
