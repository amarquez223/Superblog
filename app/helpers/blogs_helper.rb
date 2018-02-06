module BlogsHelper

	def form_title
		@blog.new_record? ? "Nuevo Post" : "Modificar Post"
	end
	
end
