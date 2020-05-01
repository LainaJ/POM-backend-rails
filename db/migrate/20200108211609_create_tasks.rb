class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      # t.integer :id
      t.string :description
      t.integer :user_id
      t.string :importance
      t.string :urgency
      t.integer :pomodoros
      t.boolean :complete_status
      t.string :category 
      t.integer :predicted_pom
      t.string :environment
      t.integer :priority_order

      t.timestamps
    end
  end
end
