class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  # validates :name, presence: true
  # validates :quantity, presence: true

  def recipe_attributes=(recipe)
    self.recipe = Recipe.find_or_create_by(title: recipe.title)
    self.recipe.update(recipe)
  end


end
