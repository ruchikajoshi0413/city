class CreateStatecontainers < ActiveRecord::Migration[7.0]
  def change
    create_table :statecontainers do |t|
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
