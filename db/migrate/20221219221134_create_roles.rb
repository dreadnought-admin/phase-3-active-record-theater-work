class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :character_name
    end 
  end
end
