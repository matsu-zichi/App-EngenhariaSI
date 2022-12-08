class AddEnderecoToLembretes < ActiveRecord::Migration[7.0]
  def change
    add_column :lembretes, :endereco, :string
  end
end
