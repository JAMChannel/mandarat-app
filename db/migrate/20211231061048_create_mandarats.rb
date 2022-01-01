class CreateMandarats < ActiveRecord::Migration[6.0]
  def change
    create_table :mandarats do |t|
      t.string :title,  null: false
      t.string :name, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
