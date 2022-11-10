class CreateSubitems < ActiveRecord::Migration[7.0]
  def change
    create_table :subitems do |t|
      t.integer :id_pai
      t.string :titulo
      t.string :texto

      t.timestamps
    end
  end
end
