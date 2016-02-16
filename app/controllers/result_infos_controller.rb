class ResultInfosController < ApplicationController
  before_action :set_result_info, only: [:show, :edit, :update, :destroy]

  # GET /result_infos
  # GET /result_infos.json
  def index
    @result_infos = ResultInfo.all
  end

  # GET /result_infos/1
  # GET /result_infos/1.json
  def show
  end

  # GET /result_infos/new
  def new
    @result_info = ResultInfo.new
  end

  # GET /result_infos/1/edit
  def edit
  end

  # POST /result_infos
  # POST /result_infos.json
  def create
    @result_info = ResultInfo.new(result_info_params)

    respond_to do |format|
      if @result_info.save
        format.html { redirect_to @result_info, notice: 'Result info was successfully created.' }
        format.json { render :show, status: :created, location: @result_info }
      else
        format.html { render :new }
        format.json { render json: @result_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /result_infos/1
  # PATCH/PUT /result_infos/1.json
  def update
    respond_to do |format|
      if @result_info.update(result_info_params)
        format.html { redirect_to @result_info, notice: 'Result info was successfully updated.' }
        format.json { render :show, status: :ok, location: @result_info }
      else
        format.html { render :edit }
        format.json { render json: @result_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /result_infos/1
  # DELETE /result_infos/1.json
  def destroy
    @result_info.destroy
    respond_to do |format|
      format.html { redirect_to result_infos_url, notice: 'Result info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_info
      @result_info = ResultInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_info_params
      params.require(:result_info).permit(:student_id, :exam_id, :subject_id, :marks_obtained)
    end
end
