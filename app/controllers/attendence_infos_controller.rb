class AttendenceInfosController < ApplicationController
  before_action :set_attendence_info, only: [:show, :edit, :update, :destroy]

  # GET /attendence_infos
  # GET /attendence_infos.json
  def index
    @attendence_infos = AttendenceInfo.all
  end

  # GET /attendence_infos/1
  # GET /attendence_infos/1.json
  def show
  end

  # GET /attendence_infos/new
  def new
    @attendence_info = AttendenceInfo.new
  end

  # GET /attendence_infos/1/edit
  def edit
  end

  # POST /attendence_infos
  # POST /attendence_infos.json
  def create
    @attendence_info = AttendenceInfo.new(attendence_info_params)

    respond_to do |format|
      if @attendence_info.save
        format.html { redirect_to @attendence_info, notice: 'Attendence info was successfully created.' }
        format.json { render :show, status: :created, location: @attendence_info }
      else
        format.html { render :new }
        format.json { render json: @attendence_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendence_infos/1
  # PATCH/PUT /attendence_infos/1.json
  def update
    respond_to do |format|
      if @attendence_info.update(attendence_info_params)
        format.html { redirect_to @attendence_info, notice: 'Attendence info was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendence_info }
      else
        format.html { render :edit }
        format.json { render json: @attendence_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendence_infos/1
  # DELETE /attendence_infos/1.json
  def destroy
    @attendence_info.destroy
    respond_to do |format|
      format.html { redirect_to attendence_infos_url, notice: 'Attendence info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendence_info
      @attendence_info = AttendenceInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendence_info_params
      params.require(:attendence_info).permit(:student_id, :class_id, :status, :record_date)
    end
end
