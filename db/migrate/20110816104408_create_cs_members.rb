class CreateCsMembers < ActiveRecord::Migration
  def change
    create_table :cs_members do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :address2
      t.string :address3
      t.string :county
      t.string :country
      t.integer :mobile

      t.timestamps
    end
  end
end
