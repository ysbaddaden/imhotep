class CreateWiki < ActiveRecord::Migration
  def self.up
    create_table :wiki do |t|
      t.string :path
      t.string :name, :null => false
      t.string :title
      t.text   :body
      t.timestamps
    end
    
    add_index :wiki, [:path, :name], :unique => true
  end

  def self.down
    drop_table :wiki
  end
end
