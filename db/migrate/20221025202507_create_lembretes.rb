class CreateLembretes < ActiveRecord::Migration[7.0]
  def change
    create_table :lembretes do |t|
      t.string :titulo
      t.string :texto
      t.references :ambiente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
