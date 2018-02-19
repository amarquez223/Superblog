class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :destroy]

	def index
		@blogs = Blog.all.order(created_at: :desc)
	end

	def show
		#@blog = Blog.find(params[:id])
	end

	def new
		if user_signed_in?
			@blog = Blog.new
		else
			redirect_to new_user_session_path
		end
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to blogs_path, notice: "El post fue adicionado correctamente"
		else
			render :new
		end
	end

	def edit
		#@blog = Blog.find(params[:id])
	end

	def update
		#@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to blogs_path, notice: "El post fue actualizado exitosamente"
		else
			render :edit
		end
	
	end

	def destroy
		#blog = Blog.find(params[:id])
		if @blog.destroy
			redirect_to blogs_path, notice: "El post fue eliminado exitosamente"
		end
	end

	protected
	def blog_params
		params.require(:blog).permit(:title,:body,:user_id)
	end

	private
	def find_blog
		@blog = Blog.find(params[:id])
	end

end
