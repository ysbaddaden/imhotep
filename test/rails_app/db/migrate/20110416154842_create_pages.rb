class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :path
      t.string :name, :null => false
      t.string :title
      t.text   :body
      t.timestamps
    end
    
    add_index :pages, [:path, :name], :unique => true
  end

  def self.down
    drop_table :pages
  end
end
