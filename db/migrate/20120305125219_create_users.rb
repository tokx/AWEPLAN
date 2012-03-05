class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :pubkey
      t.boolean :admin
      t.integer :group_id

      t.timestamps

    end
    
  end
end
