Rails.application.routes.draw do

  #BLOGS
  # http://localhost:3000/blogs/
  get 'blogs/', to: 'blogs#index'
  # http://localhost:3000/blogs/1
  get 'blogs/:id', to: 'blogs#show'
  # http://localhost:3000/blogs/
  post 'blogs/', to: 'blogs#create'
  # http://localhost:3000/blogs/
  patch 'blogs/', to: 'blogs#update'
  # http://localhost:3000/blogs/1
  delete 'blogs/:id', to: 'blogs#destroy'
  # http://localhost:3000/blogs/blogCategory
  post 'blogs/blogCategory', to: 'blogs#blogCategory'
  # http://localhost:3000/blogs/blogCategory/1
  get 'blogs/blogCategory/:id', to: 'blogs#getBlogCategory'

end
