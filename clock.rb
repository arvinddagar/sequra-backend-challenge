require 'clockwork'
include Clockwork

every(1.day, 'Calculate Disbursement', at: '00:01', tz: 'UTC', if: ->(t) { t.strftime('%A') == 'Monday' }) do
  DisbursementWorkerWorker.perform_async
end
