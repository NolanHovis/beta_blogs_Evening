Rails.application.routes.draw do
  get 'blogs/', to: 'blogs#index'

  get 'blogs/:id', to: 'blogs#show'

  post 'blogs/', to: 'blogs#create'

  patch 'blogs/', to: 'blogs#update'

  delete 'blogs/:id', to: 'blogs#destroy'

  post 'blogs/blogCategory', to: 'blogs#blogCategory'

  get 'blogs/blogCategory/:id', to: 'blogs#getBlogCategory'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
