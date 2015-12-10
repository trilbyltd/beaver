class Notification < ActiveRecord::Base

STATE = ['WARNING' => 'warning', 
				 'CRITICAL' => 'danger',
				 'DOWN' => 'danger', 
				 'UNKNOWN' => 'info',
				 'OK' => 'info']

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

default_scope	{ order('date_opened DESC') }

end
