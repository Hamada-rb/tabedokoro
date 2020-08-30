class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.float :lat
      t.float :lng
      t.text :content

      t.timestamps
    end
  end
end
