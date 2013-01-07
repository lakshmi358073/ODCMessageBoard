module Post1sHelper
	def categories()
	 categories = []	
	 CreateCategory.find(:all).each do |category|
      categories << category.name
     end
     categories 
	end	
end
