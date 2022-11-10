class RemoveIdPaiToSubitems < ActiveRecord::Migration[7.0]
  def change
    remove_column :subitems, :id_pai
  end
end
