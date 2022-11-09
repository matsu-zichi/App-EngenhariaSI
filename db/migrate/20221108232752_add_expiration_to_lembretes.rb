class AddExpirationToLembretes < ActiveRecord::Migration[7.0]
  def change
    add_column :lembretes, :expire_at, :datetime
  end
end
