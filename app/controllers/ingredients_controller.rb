class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    end
  end

  def edit
  end

  def update
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
