class CreateHighlights < ActiveRecord::Migration[7.0]
  def change
    create_table :highlights do |t|
      t.string :heading
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
