class AddNameToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :name, :string
    add_column :recipes, :instruction, :text
    add_column :recipes, :servings, :integer
  end
end
