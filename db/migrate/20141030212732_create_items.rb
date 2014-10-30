class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :content
      t.boolean :complete

      t.timestamps
    end
  end
end
