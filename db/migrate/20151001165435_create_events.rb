class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.text :module
      t.date :date
      t.string :supervisor
      t.time :time
      t.time :duration

      t.timestamps
    end
  end
end
