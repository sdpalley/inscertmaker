class SettleAgreesController < ApplicationController
  before_action :set_settle_agree, only: [:show, :edit, :update, :destroy]

  # GET /settle_agrees
  # GET /settle_agrees.json
  def index
    @settle_agrees = SettleAgree.all
  end

  # GET /settle_agrees/1
  # GET /settle_agrees/1.json
  def show
  end

  # GET /settle_agrees/new
  def new
    @settle_agree = SettleAgree.new
  end

  # GET /settle_agrees/1/edit
  def edit
  end

  # POST /settle_agrees
  # POST /settle_agrees.json
  def create
    @settle_agree = SettleAgree.new(settle_agree_params)

    respond_to do |format|
      if @settle_agree.save
        format.html { redirect_to @settle_agree, notice: 'Settle agree was successfully created.' }
        format.json { render :show, status: :created, location: @settle_agree }
      else
        format.html { render :new }
        format.json { render json: @settle_agree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settle_agrees/1
  # PATCH/PUT /settle_agrees/1.json
  def update
    respond_to do |format|
      if @settle_agree.update(settle_agree_params)
        format.html { redirect_to @settle_agree, notice: 'Settle agree was successfully updated.' }
        format.json { render :show, status: :ok, location: @settle_agree }
      else
        format.html { render :edit }
        format.json { render json: @settle_agree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settle_agrees/1
  # DELETE /settle_agrees/1.json
  def destroy
    @settle_agree.destroy
    respond_to do |format|
      format.html { redirect_to settle_agrees_url, notice: 'Settle agree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_settle_agree
      @settle_agree = SettleAgree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def settle_agree_params
      params.require(:settle_agree).permit(:plaintiff, :defendant, :settle_amount, :pay_date, :court, :confidential, :choice_of_law, :signature_block, :case_type, :notice_to, :indemnity, :required, :intro_text)
    end
end
