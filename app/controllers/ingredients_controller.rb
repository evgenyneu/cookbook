class IngredientsController < ApplicationController
  before_action :set_recipe

  def create
    @ingredient = @recipe.ingredients.new comments_params

    if @ingredient.save
      redirect_to @recipe
    else
      error =
        if @ingredient.errors[:name].present?
          'Ingredient is blank'
        else
          'Error saving ingredient'
        end

      redirect_to @recipe, flash: { error: error }
    end
  end

  def destroy
    Ingredient.find(params[:id]).destroy
    redirect_to @recipe
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comments_params
    params.required(:ingredient).permit(:name)
  end
end
