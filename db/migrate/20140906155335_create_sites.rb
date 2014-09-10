class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :st_url
      t.string :rs_url
      t.datetime :last_publish_at

      t.timestamps
    end

    # インデックスと一意制約の追加
    add_index :sites, :rs_url, unique: true
  end
end
