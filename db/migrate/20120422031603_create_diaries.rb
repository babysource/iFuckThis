class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.integer :user, :null => false
      t.date :date, :null => false
      t.string :done, :null => false
    end
  end
end
