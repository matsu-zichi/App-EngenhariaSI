class RemoveUserIdFromLembretes < ActiveRecord::Migration[7.0]
  def change
    remove_column :lembretes, :user_id, :integer
  end
end
