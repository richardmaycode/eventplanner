class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :member_limit
      t.references :event, foreign_key: true
      
      t.timestamps
    end
  end
end
