class AdvertisementsController < ServicesController
  def create
    @service = Advertisement.new(service_params)
    super
  end

  def new
    @service = Advertisement.new
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Advertisement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:advertisement).permit(:company, :contact, :phone, :email, :description, :price, :price_with_vat, :payed)
  end
end
