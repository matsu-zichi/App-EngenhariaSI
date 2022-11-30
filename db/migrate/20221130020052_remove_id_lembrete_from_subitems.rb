class RemoveIdLembreteFromSubitems < ActiveRecord::Migration[7.0]
  def change
    remove_column :subitems, :id_lembrete, :integer
  end
end
