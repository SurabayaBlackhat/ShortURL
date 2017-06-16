class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :external_url
      t.string :short_url
      t.integer :visited

      t.timestamps
    end
    add_index :urls, :external_url, unique: true
    add_index :urls, :short_url, unique: true
  end
end
