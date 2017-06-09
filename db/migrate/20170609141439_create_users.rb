class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email

      t.timestamps null: false
    end
    
    add_column :articles, :user_id, :integer
    
  end
  
end
