class AddLembreteReferenceToSubitem < ActiveRecord::Migration[7.0]
  def change
    add_reference :subitems, :lembrete, null: false, foreign_key: true
  end
end
