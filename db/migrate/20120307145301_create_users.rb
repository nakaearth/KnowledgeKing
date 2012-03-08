class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, :null=>false
      t.string :uid, :null=>false
      t.string :screen_name, :null=>true, :uniq=>true
      t.string :name, :null=>true
      t.string :image_path
      t.string :token
      t.string :secret
      t.timestamps
    end
    add_index :users, [:uid,:provider]
    add_index :users, [:screen_name]
  end
end
