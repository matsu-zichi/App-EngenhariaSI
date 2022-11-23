class AddEmailToLembretes < ActiveRecord::Migration[7.0]
  def change
    add_column :lembretes, :email, :string
  end
end
