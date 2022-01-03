class CreateMandarats < ActiveRecord::Migration[6.0]
  def change
    create_table :mandarats do |t|
      # t.string :title
      t.string :name, null: false
      t.references :user, foreign_key: true
      t.references :title, foreign_key: true
      
      t.timestamps
    end
  end
end
