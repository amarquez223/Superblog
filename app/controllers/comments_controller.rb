class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to blog_path(@comment.blog_id)
		end
	end

	protected
		def comment_params
			params.require(:comment).permit(:user_id,:blog_id,:comment_body)
		end

end
