class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true
      t.references :mandarat, foreign_key: true
      t.timestamps
    end
  end
end
