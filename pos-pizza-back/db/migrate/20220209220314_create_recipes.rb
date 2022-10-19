class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :pizza_id
      t.integer :ingredient_id
    end
  end
end
