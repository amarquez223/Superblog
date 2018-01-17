module BlogsHelper

	def form_title
		@blog.new_record? ? "Crear Post" : "Modificar Post"
	end
	
end
