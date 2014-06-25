Streamliners::Application.routes.draw do
  #get "users/new"
  #get "users/create"
  #get "users/show"
  #get "users/index"
  root 'sessions#new'
  resources :users
  resources :sessions, only: [:new, :edit, :editchild, :create, :destroy]
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/password_recovery', to: 'sessions#recover',     via: 'get'
  
  #get "health_record/new"
  resources :children
  resources :health_records
  resources :physical_exams
  resources :findings

  # Edit links
  get '/children/:id/editchild', to: 'children#editchild', as:'editchild'
  get '/children/:id/editvitals', to: 'children#editvitals', as:'editvitals'
  get '/children/:id/edithearing', to: 'children#edithearing', as:'edithearing'
  get '/children/:id/editvision', to: 'children#editvision', as:'editvision'
  get '/children/:id/editphysicali', to: 'children#editphysicali', as:'editphysicali'
  get '/children/:id/editphysicalii', to: 'children#editphysicalii', as:'editphysicalii'
  get '/children/:id/editassessment', to: 'children#editassessment', as:'editassessment'

  # Show links
  get '/children/:id/vitals', to: 'children#vitals', as:'vitals'
  get '/children/:id/hearing', to: 'children#hearing', as:'hearing'
  get '/children/:id/vision', to: 'children#vision', as:'vision'
  get '/children/:id/physicali', to: 'children#physicali', as:'physicali'
  get '/children/:id/physicalii', to: 'children#physicalii', as:'physicalii'  
  get '/children/:id/assessment', to: 'children#assessment', as:'assessment'
  get '/children/:id/summary', to: 'children#summary', as:'summary'

  # Update links
  patch '/children/:id/vitals', to: 'children#vitals', as:'patch_vitals'
  patch '/children/:id/hearing', to: 'children#hearing', as:'patch_hearing'
  patch '/children/:id/vision', to: 'children#vision', as:'patch_vision'
  patch '/children/:id/physicali', to: 'children#physicali', as:'patch_physicali'
  patch '/children/:id/physicalii', to: 'children#physicalii', as:'patch_physicalii'
  patch '/children/:id/assessment', to: 'children#assessment', as:'patch_assessment'

  match '/signin',  to: 'sessions#new',         via: 'get'

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
