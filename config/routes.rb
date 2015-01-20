Rails.application.routes.draw do
  
  devise_for :users, :path => '', :path_names => {:sign_in => 'sign_in', :sign_out => 'sign_out', :sign_up => 'sign_up'}
  resources :users
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  
  root "static#index"

  resources :programs
  resources :activities    
  resources :logs

  post 'activities/:id/tweet', to:'activities#tweet', as: 'tweet'
  post 'activities/:id/share', to:'activities#share', as: 'share'
  get 'activities/:id/create_event', to: 'activities#create_event', as: 'create_event'
  get 'activities/:id/create_gcal', to: 'activities#create_gcal', as: 'create_gcal'
  post 'activities/:id/send_mails', to: 'activities#send_mails', as: 'send_mails'

  match 'settings' => 'magicbeans#settings', via: [:get, :post], :as => :settings
  get 'settings/generate' => 'magicbeans#generate_page_token', :as => 'generate'

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
