class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  before_filter :yes, :brands

  def yes
  	@categories = Category.all
end
def brands
	@brands = Product.pluck(:brand).sort.uniq!
	if @brand == nil
		@brands = Product.pluck(:brand).sort
end
end
end

 

 

