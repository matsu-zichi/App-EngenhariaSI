class AddIdLembreteToSubitems < ActiveRecord::Migration[7.0]
  def change
    add_column :subitems, :id_lembrete, :integer
  end
end
