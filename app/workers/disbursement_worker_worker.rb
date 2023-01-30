class DisbursementWorkerWorker
  include Sidekiq::Worker

  def perform(*args)
  	start_date = (Time.now - 7.days).beginning_of_week
  	end_date = (Time.now - 7.days).end_of_week
  	data = Order.where('completed_at IS NOT NULL AND completed_at BETWEEN ? AND ?', start_date, end_date).select('SUM(merchant_amount) AS disbursement_amount, merchant_id, CURRENT_TIMESTAMP AS created_at, CURRENT_TIMESTAMP AS updated_at').group(:merchant_id).as_json
    DisbursementDetail.insert_all(data)
  end
end
