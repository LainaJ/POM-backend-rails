class CreatePomodoros < ActiveRecord::Migration[6.0]
  def change
    create_table :pomodoros do |t|
      # t.integer :id
      t.string :timer_length
      t.string :break_length

      t.timestamps
    end
  end
end
