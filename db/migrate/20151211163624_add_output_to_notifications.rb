class AddOutputToNotifications < ActiveRecord::Migration
  def change
  	add_column :notifications, :output, :string

  end
end
