class CreateSbscs < ActiveRecord::Migration
  def change
    create_table :sbscs do |t|
      t.integer :user_id
      t.integer :site_id

      t.timestamps
    end

    # インデックスと一意制約の追加
    add_index :sbscs, [:user_id, :site_id], unique: true
  end
end
