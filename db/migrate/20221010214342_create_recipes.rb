class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.decimal :preparation_time, default: 0, precision: 15, scale: 2
      t.decimal :cooking_time, default: 0, precision: 15, scale: 2
      t.text :description
      t.boolean :public, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
