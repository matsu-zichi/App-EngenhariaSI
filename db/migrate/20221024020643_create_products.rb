class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nome
      t.date :validade
      t.integer :user_id

      t.timestamps
    end
  end
end
