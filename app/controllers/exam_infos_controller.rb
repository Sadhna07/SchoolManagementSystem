class ExamInfosController < ApplicationController
  before_action :set_exam_info, only: [:show, :edit, :update, :destroy]

  # GET /exam_infos
  # GET /exam_infos.json
  def index
    @exam_infos = ExamInfo.all
  end

  # GET /exam_infos/1
  # GET /exam_infos/1.json
  def show
  end

  # GET /exam_infos/new
  def new
    @exam_info = ExamInfo.new
  end

  # GET /exam_infos/1/edit
  def edit
  end

  # POST /exam_infos
  # POST /exam_infos.json
  def create
    @exam_info = ExamInfo.new(exam_info_params)

    respond_to do |format|
      if @exam_info.save
        format.html { redirect_to @exam_info, notice: 'Exam info was successfully created.' }
        format.json { render :show, status: :created, location: @exam_info }
      else
        format.html { render :new }
        format.json { render json: @exam_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_infos/1
  # PATCH/PUT /exam_infos/1.json
  def update
    respond_to do |format|
      if @exam_info.update(exam_info_params)
        format.html { redirect_to @exam_info, notice: 'Exam info was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_info }
      else
        format.html { render :edit }
        format.json { render json: @exam_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_infos/1
  # DELETE /exam_infos/1.json
  def destroy
    @exam_info.destroy
    respond_to do |format|
      format.html { redirect_to exam_infos_url, notice: 'Exam info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_info
      @exam_info = ExamInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_info_params
      params.require(:exam_info).permit(:exam_id, :exam_name, :class_id)
    end
end
