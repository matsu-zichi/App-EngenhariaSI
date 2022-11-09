class RenameColumnTextoEmLembretes < ActiveRecord::Migration[7.0]
  def change
    rename_column :lembretes, :texto, :descricao
  end
end
