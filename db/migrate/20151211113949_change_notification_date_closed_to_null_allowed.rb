class ChangeNotificationDateClosedToNullAllowed < ActiveRecord::Migration
  def change
  	change_column :notifications, :date_closed, :datetime, null: true
  end
end
