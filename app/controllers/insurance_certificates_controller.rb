class InsuranceCertificatesController < ApplicationController
  before_action :set_insurance_certificate, only: [:show, :edit, :update, :destroy]

  # GET /insurance_certificates
  # GET /insurance_certificates.json
  def index
    @insurance_certificates = InsuranceCertificate.all
  end

  # GET /insurance_certificates/1
  # GET /insurance_certificates/1.json
  def show
  end

  # GET /insurance_certificates/new
  def new
    @insurance_certificate = InsuranceCertificate.new
  end

  # GET /insurance_certificates/1/edit
  def edit
  end

  # POST /insurance_certificates
  # POST /insurance_certificates.json
  def create
    @insurance_certificate = InsuranceCertificate.new(insurance_certificate_params)

    respond_to do |format|
      if @insurance_certificate.save
        format.html { redirect_to @insurance_certificate, notice: 'Insurance certificate was successfully created.' }
        format.json { render :show, status: :created, location: @insurance_certificate }
      else
        format.html { render :new }
        format.json { render json: @insurance_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_certificates/1
  # PATCH/PUT /insurance_certificates/1.json
  def update
    respond_to do |format|
      if @insurance_certificate.update(insurance_certificate_params)
        format.html { redirect_to @insurance_certificate, notice: 'Insurance certificate was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance_certificate }
      else
        format.html { render :edit }
        format.json { render json: @insurance_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_certificates/1
  # DELETE /insurance_certificates/1.json
  def destroy
    @insurance_certificate.destroy
    respond_to do |format|
      format.html { redirect_to insurance_certificates_url, notice: 'Insurance certificate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_certificate
      @insurance_certificate = InsuranceCertificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_certificate_params
      params.require(:insurance_certificate).permit(:form_number, :insuror, :occurrence_limit, :aggregate_limit, :named_insured, :policy_start_date, :policy_end_date, :certificate_holder, :additional_insured, :number_of_certificates_issued)
    end
end
