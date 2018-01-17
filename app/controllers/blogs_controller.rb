class BlogsController < ApplicationController

	def index
		@blogs = Blog.all.order(created_at: :desc)
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to blogs_path
		end
	end

	def edit
		@blog = Blog.find(params[:id])
	end

	def update
		@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to blogs_path
		end
	
	end

	def destroy
		blog = Blog.find(params[:id])
		if blog.destroy
			redirect_to blogs_path
		end
	end

	protected
	def blog_params
		params.require(:blog).permit(:title,:body,:user_id)
	end

end
