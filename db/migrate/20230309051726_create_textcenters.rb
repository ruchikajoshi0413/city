class CreateTextcenters < ActiveRecord::Migration[7.0]
  def change
    create_table :textcenters do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :alignment

      t.timestamps
    end
  end
end
