class FoodCategoriesController < ApplicationController
	def index
		@food_category = FoodCategory.new
		@food_categories = current_restaurant.food_categories
	end

	def create
		@food_category = FoodCategory.new(food_category_params)
		@food_category.restaurant_id = current_restaurant.id
	    if @food_category.save
	    	redirect_to admin_food_categories_path, notice: "ジャンルを作成しました！"
	    else
	    	@food_categories = FoodCategory.all
	    	render :index
    	end
	end

	def edit
		@food_category = FoodCategory.find(params[:id])
	end

	def update
		@food_category = FoodCategory.find(params[:id])
	    if @food_category.update(food_category_params)
	      redirect_to admin_food_categories_path, notice: "ジャンルを編集しました！"
	    else
	      render :edit
	    end
	end

	def destroy
	end

	private

  def food_category_params
    params.require(:food_category).permit(:food_category_name, :active_status)
  end
end
