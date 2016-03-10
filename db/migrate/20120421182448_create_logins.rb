class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name, :null => false
      t.string :user, :null => false
      t.string :pass, :null => false
    end
  end
end