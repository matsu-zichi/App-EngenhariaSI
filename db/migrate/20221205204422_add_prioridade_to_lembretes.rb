class AddPrioridadeToLembretes < ActiveRecord::Migration[7.0]
  def change
    add_column :lembretes, :prioridade, :string
  end
end
