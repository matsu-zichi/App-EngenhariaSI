class AddUserReferenceToAmbiente < ActiveRecord::Migration[7.0]
  def change
    add_reference :ambientes, :user, null: false, foreign_key: true
  end
end
