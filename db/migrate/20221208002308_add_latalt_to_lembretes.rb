class AddLataltToLembretes < ActiveRecord::Migration[7.0]
  def change
    add_column :lembretes, :latalt, :string
  end
end
