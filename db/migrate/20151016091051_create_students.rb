class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :event, index: true
      t.references :attendance, index: true

      t.timestamps
    end
  end
end
