class BlogsController < ApplicationController
  def index
    blogs = Blog.all
    render json: blogs
  end

  def show
    blog = Blog.find(params[:id])
    render json: blog
  end

  def create
    blog = Blog.create(blog_params)

    render json: blog
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    render json: blog
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    render json: blog
  end

  def blogCategory
    blog = Blog.find(params[:blog_id])
    category = Category.find(params[:category_id])
    blog.categories << category
  end

  def getBlogCategory
    blog = Blog.find(params[:id])
    render json: blog.categories
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :content, :user_id)
    end
end
