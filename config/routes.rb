Rails.application.routes.draw do
  
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  devise_for :users
  resources :projects

  resources :pendaftar
  #get "pendaftar/index" => "pendaftar#index"
  
 # match "projects/pendaftar" ,:to =>"projects#pendaftar"
 get 'pendaftar2' => "projects#pendaftar", as: :pendaftar2
 get 'bendahari' => "projects#bendahari", as: :bendahari
 get 'antarabangsa' => "projects#antarabangsa", as: :antarabangsa
 get 'hep' => "projects#hep", as: :hep
 get 'jaringan' => "projects#jaringan", as: :jaringan
 get 'penyelidikan' => "projects#penyelidikan", as: :penyelidikan
 get 'akademik' => "projects#akademik", as: :akademik

  

 

  resources :staff
  root 'projects#index'

  #get 'page/project'

  get 'page/approval'

  get 'page/task'

  get 'page/issue'

  get 'page/project_health'

  get 'page/pendaftar'

  #match ':controller(/:pendaftar)'

  #get 'projects/pendaftar'

 # get 'projects/pendaftar' => 'projects#pendaftar'

  get 'list-project' => 'projects#listproject'

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

  #ini untuk file uploader
  resources :resumes, only: [:index, :new, :create, :destroy]
   get 'resumes/index'
   

end
