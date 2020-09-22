class CreateBugs < ActiveRecord::Migration[6.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.integer :status
      t.integer :platform

      t.timestamps
    end
  end
end
