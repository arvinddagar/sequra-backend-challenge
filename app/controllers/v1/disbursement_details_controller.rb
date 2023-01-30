class V1::DisbursementDetailsController < ApplicationController

  before_action :find_merchant
  
  def index
    disbursement_details = if @merchant.present?
      @merchant.disbursement_details
    else
      DisbursementDetail.all
    end
    disbursement_details = disbursement_details.where("DATE(created_at) = ?", Date.parse(api_params[:disbursement_date])) if api_params[:disbursement_date].present?
    respond_to do |format|
      format.json do
        render json: {
          response: {
            body: {
              disbursement_details: disbursement_details
            },
            header: {
              status: 200
            }
          }
        }
      end
    end
  end

  private

  def find_merchant
    @merchant = Merchant.find_by(cif: api_params[:cif_id]) if api_params[:cif_id].present?
  end

  def api_params
    params.permit(:cif_id, :disbursement_date)
  end

end
