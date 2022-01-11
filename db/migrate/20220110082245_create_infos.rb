class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.boolean :solved1, default: false
      t.boolean :solved2, default: false
      t.boolean :solved3, default: false
      t.boolean :solved4, default: false
      t.boolean :solved5, default: false
      t.boolean :solved6, default: false
      t.boolean :solved7, default: false
      t.boolean :solved8, default: false
      t.references :user, foreign_key: true
      t.references :mandarat, foreign_key: true
      t.timestamps
    end
  end
end
