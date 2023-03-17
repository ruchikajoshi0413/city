class CreateStateproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :stateproducts do |t|
      t.string :entries
      t.string :image

      t.timestamps
    end
  end
end
