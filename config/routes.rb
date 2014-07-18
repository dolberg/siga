Rails.application.routes.draw do

  resources :ventas

  get 'resultado/agricultura'

  get 'resultado/forrajesconservados'

  get 'resultado/forrajes'

  get 'resultado/sementerafinal'

  get 'resultado/produccion'

  resources :productos

  get 'inicio/inicio'

  resources :usuarioempresas

  resources :empresas

  resources :loteactividads

  resources :lab3ros do

    resources :insumolab3ros

  end


  get 'labgrale/labgrales'

  resources :labors do 

    resources :insumolabores

  end

  resources :coefuta

  get 'compra_insumos/new'

  get 'compra_insumos/create'

  get 'compra_insumos/edit'

  get 'compra_insumos/update'

  get 'compra_insumos/destroy'

  resources :facy_rems do 

    resources :compra_insumos

  end

  resources :actividads

  get 'lotes/new'

  get 'lotes/create'

  get 'lotes/edit'

  get 'lotes/update'

  get 'lotes/destroy'

  resources :campos do

    resources :lotes

  end

  resources :campos do

    post 'lotes', on: :collection
    
  end

  resources :lotes do

    post 'loteactividads', on: :collection
    
  end

  resources :insumos

  get "usuarios/index"
  post "usuarios/index"
  get "usuarios/registrar"
  post "usuarios/registrar"
  get "usuarios/show"
  post "usuarios/show"
  get "usuarios/exito"
  post "usuarios/exito"
  get "principal/principal"
  post "principal/principal"
  get "principal/inicio"
  post "principal/inicio"
  get "usuarios/cerrar_sesion"
  post "usuarios/cerrar_sesion"
  get "usuarioempresas/exito"
  post "usuarioempresas/exito"

  resources :usuarios

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'usuarios#index'

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
