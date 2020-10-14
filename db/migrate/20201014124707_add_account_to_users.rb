class AddAccountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :account, null: false, foreign_key: true
  end
end
