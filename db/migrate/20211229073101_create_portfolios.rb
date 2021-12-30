class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.string :url, null: false
      t.string :github, null: false
      t.timestamps
    end
  end
end
