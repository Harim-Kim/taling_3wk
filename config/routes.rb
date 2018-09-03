Rails.application.routes.draw do
  get 'post/index' #게시물을 볼 수 있는 곳
  get 'post/new' #게시물을 작성하는 공간(user)
  post 'post/create' #작성된 게시물을 받아 db에 저장하는 곳(server)

  get 'post/read/:post_id' => 'post#read' #게시물 하나 읽는 공간

  get 'post/update_post/:post_id' => 'post#update_post'#게시물을 수정하는 공간(user)
  post 'post/update/:post_id' => 'post#update' #수정된 게시물 정보를 받아 db에 적용하는 곳(server)
  
  get 'post/delete/:post_id' => 'post#delete' #게시물을 지우는 공간(server)
  
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
