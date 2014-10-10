Rails.application.routes.draw do

  resources :events
  resources :tipoincapacidads
  resources :tipoenfermedads
  resources :tiporiesgos
  resources :tipoincidentes
  resources :tipoaccidentes
  resources :albums
  resources :accidentes
  resources :municipios
  resources :departamentos
  

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'email/send' => 'accidentes#enviar'
  
  resources :users

  match '/home', to: 'static_pages#home',  via: 'get' 
  match '/help',to: 'static_pages#help',  via: 'get' 
  match '/about',   to: 'static_pages#about',  via: 'get' 
  match '/contact', to: 'static_pages#contact',  via: 'get'
  #estadistica
  match '/estadistica', to: 'static_pages#estadistica',  via: 'get' 
 
  root :to => 'user_sessions#index' 

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/about'
  get 'login' => 'user_sessions#new', :as => :login 
  get 'logout' => 'user_sessions#destroy', :as => :logout 
  get 'static_pages/estadistica'


  resources :incidentes
  resources :funcionarios

  resources :riesgos do 
    resources :tiporiesgos
  end

  resources :incapacidads do
    resources :tipoincapacidads
  end

  resources :accidentes do
    resources :tipoaccidentes
  end


  resources :enfermedads
  resources :personalinvolucrados
  resources :tipodocs
  resources :centros
  resources :user_sessions
  resources :users
  resources :cronogramas
  resources :tipo_salidas


  get 'incidentes_estadistica',to: 'incidentes#estadistica', :as => 'incidentes_estadistica'
  get 'riesgos_estadistica',to: 'riesgos#estadistica', :as => 'riesgos_estadistica'
  get 'enfermedads_estadistica',to: 'enfermedads#estadistica', :as => 'enfermedads_estadistica'
  get 'incapacidads_estadistica',to: 'incapacidads#estadistica', :as => 'incapacidads_estadistica'
  get 'accidentes_estadistica',to: 'accidentes#estadistica', :as => 'accidentes_estadistica'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   

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
