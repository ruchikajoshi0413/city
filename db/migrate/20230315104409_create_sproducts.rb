class CreateSproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :sproducts do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :alignment

      t.timestamps
    end
  end
end
