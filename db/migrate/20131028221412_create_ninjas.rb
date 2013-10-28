class CreateNinjas < ActiveRecord::Migration
  def change
    create_table(:ninjas) do |t|
      t.string :persona
      t.string :weapon
      t.integer :strength
    end
  end
end
