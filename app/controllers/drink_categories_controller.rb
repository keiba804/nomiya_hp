class DrinkCategoriesController < ApplicationController

	def index
		@drink_category = DrinkCategory.new
		@drink_categories = current_restaurant.drink_categories
	end

	def create
		@drink_category = DrinkCategory.new(drink_category_params)
		@drink_category.restaurant_id = current_restaurant.id
	    if @drink_category.save
	    	redirect_to admin_drink_categories_path, notice: "ジャンルを作成しました！"
	    else
	    	@drink_categories = DrinkCategory.all
	    	render :index
    	end
	end

	def edit
		@drink_category = DrinkCategory.find(params[:id])
	end

	def update
		@drink_category = DrinkCategory.find(params[:id])
	    if @drink_category.update(drink_category_params)
	      redirect_to admin_drink_categories_path, notice: "ジャンルを編集しました！"
	    else
	      render :edit
	    end
	end

	def destroy
	end

	private

  def drink_category_params
    params.require(:drink_category).permit(:drink_category_name, :active_status)
  end
end
