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
  
  #get "health_record/new"
  resources :children
  resources :health_records
  resources :physical_exams
  resources :findings

  # New links
  get '/health_records/newhearing', to: 'health_records#newhearing', as:'new_hearing'
  get '/health_records/newvision', to: 'health_records#newvision', as:'new_vision'
  get '/physical_exams/newphysicali', to: 'physical_exams#physicali', as:'new_physicali'
  get '/physical_exams/newphysicalii', to: 'physical_exams#physicalii', as:'new_physicalii'
  get '/findings/newassessment', to: 'physical_exams#assessment', as:'new_assessment'

  # Edit links
  get '/children/:id/editchild', to: 'children#editchild', as:'editchild'
  get '/children/:id/editvitals', to: 'children#editvitals', as:'editvitals'
  get '/health_records/:id/edithearing', to: 'health_records#edithearing', as:'edithearing'
  get '/health_records/:id/editvision', to: 'health_records#editvision', as:'editvision'
  get '/physical_exams/:id/editphysicali', to: 'physical_exams#editphysicali', as:'editphysicali'
  get '/physical_exams/:id/editphysicalii', to: 'physical_exams#editphysicalii', as:'editphysicalii'
  get '/findings/:id/editassessment', to: 'findings#editassessment', as:'editassessment'

  # Show links
  get '/children/:id/vitals', to: 'children#vitals', as:'vitals'
  get '/health_records/:id/hearing', to: 'health_records#hearing', as:'hearing'
  get '/health_records/:id/vision', to: 'health_records#vision', as:'vision'
  get '/physical_exams/:id/physicali', to: 'physical_exams#physicali', as:'physicali'
  get '/physical_exams/:id/physicalii', to: 'physical_exams#physicalii', as:'physicalii'  
  get '/findings/:id/assessment', to: 'findings#assessment', as:'assessment'

  # Update links
  patch '/children/:id/vitals', to: 'children#vitals', as:'patch_vitals'
  patch '/health_records/:id/hearing', to: 'health_records#hearing', as:'patch_hearing'
  patch '/health_records/:id/vision', to: 'health_records#vision', as:'patch_vision'
  patch '/physical_exams/:id/physicali', to: 'physical_exams#physicali', as:'patch_physicali'
  patch '/physical_exams/:id/physicalii', to: 'physical_exams#physicalii', as:'patch_physicalii'
  patch '/findings/:id/assessment', to: 'findings#assessment', as:'patch_assessment'

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
