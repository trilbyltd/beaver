class Notification < ActiveRecord::Base

validates :date_opened, presence: true
validates :host, presence: true
validates :state, presence: true
validates :service, presence: true
validates :output, presence: true

default_scope	{ order('date_opened DESC') }

scope :latest_week, lambda { where("date_opened > ?", Time.now.beginning_of_week) }

STATE = [ 
					['WARNING', 'warning'], 
				 	['CRITICAL', 'danger'],
				 	['DOWN', 'danger'],
				 	['UNKNOWN', 'info'],
				 	['OK', 'info']
				]

TAG = [	"Untagged", 
				"Action Taken: Service Issue (View clean)", 
				"Action Taken: Service Issue, timeperiod inappropriate (View clean)",
				"Action Taken: View issue (network/site outage, service health questionable)",
				"No Action Taken: Timeperiod not appropriate",
				"No Action Taken: Work ongoing, downtime expired",
				"No Action Taken: Work ongoing, downtime not set",
				"No Action Taken: Threshold adjustment required",
				"No Action Taken: Check is faulty/requires modification",
				"N/A"
			]

end
