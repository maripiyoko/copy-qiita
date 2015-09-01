class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :contents
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
