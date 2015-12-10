class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.datetime :date_opened, null: false
      t.datetime :date_closed, null: false
      t.string :host, null: false
      t.string :service, null: false
      t.string :state, null: false
      t.string :tag
      t.string :notes

      t.timestamps null: false
    end
  end
end
