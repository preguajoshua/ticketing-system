class CreateAttendees < ActiveRecord::Migration[7.1]
  def change
    create_table :attendees do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :ticket, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
