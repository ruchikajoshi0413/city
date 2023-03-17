class CreateAutoinsurances < ActiveRecord::Migration[7.0]
  def change
    create_table :autoinsurances do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
