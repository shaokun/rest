class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :sex

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
