class CreateChicagohighlight2s < ActiveRecord::Migration[7.0]
  def change
    create_table :chicagohighlight2s do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
