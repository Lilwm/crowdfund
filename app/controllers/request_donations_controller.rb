class RequestDonationsController < ApplicationController
  before_action :set_request_donation, only: %i[ show edit update destroy ]

  # GET /request_donations or /request_donations.json
  def index
    @request_donations = RequestDonation.all
  end

  # GET /request_donations/1 or /request_donations/1.json
  def show
  end

  # GET /request_donations/new
  def new
    @request_donation = RequestDonation.new
  end

  # GET /request_donations/1/edit
  def edit
  end

  # POST /request_donations or /request_donations.json
  def create
    @request_donation = RequestDonation.new(request_donation_params)

    respond_to do |format|
      if @request_donation.save
        format.html { redirect_to request_donation_url(@request_donation), notice: "Request donation was successfully created." }
        format.json { render :show, status: :created, location: @request_donation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request_donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_donations/1 or /request_donations/1.json
  def update
    respond_to do |format|
      if @request_donation.update(request_donation_params)
        format.html { redirect_to request_donation_url(@request_donation), notice: "Request donation was successfully updated." }
        format.json { render :show, status: :ok, location: @request_donation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request_donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_donations/1 or /request_donations/1.json
  def destroy
    # added this line to fix failure to delete
    # @request_donation = RequestDonation.find(params[:id]) #added
    @request_donation.destroy

    # redirect_to request_donation_path #new line

    respond_to do |format|
      format.html { redirect_to request_donations_url, notice: "Request donation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_donation
      @request_donation = RequestDonation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_donation_params
      #params.require(:request_donation).permit(:campaign_name, :campaign_ID, :description, :target_amount, :total_raised, :campaign_enddate)
      params.require(:request_donation).permit(:campaign_name, :description, :target_amount, :total_raised, :campaign_enddate)

    end
end
