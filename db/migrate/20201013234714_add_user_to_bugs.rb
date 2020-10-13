class AddUserToBugs < ActiveRecord::Migration[6.0]
  def change
    add_reference :bugs, :user, null: false, foreign_key: true
  end
end
