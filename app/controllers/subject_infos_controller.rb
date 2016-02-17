class SubjectInfosController < ApplicationController
  before_action :set_subject_info, only: [:show, :edit, :update, :destroy]

  # GET /subject_infos
  # GET /subject_infos.json
  def index
    @subject_infos = SubjectInfo.order('exam_id').all

  end

  # GET /subject_infos/1
  # GET /subject_infos/1.json
  def show
  end

  # GET /subject_infos/new
  def new
    @subject_info = SubjectInfo.new
  end

  # GET /subject_infos/1/edit
  def edit
  end

  # POST /subject_infos
  # POST /subject_infos.json
  def create
    @subject_info = SubjectInfo.new(subject_info_params)

    respond_to do |format|
      if @subject_info.save
        format.html { redirect_to @subject_info, notice: 'Subject info was successfully created.' }
        format.json { render :show, status: :created, location: @subject_info }
      else
        format.html { render :new }
        format.json { render json: @subject_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_infos/1
  # PATCH/PUT /subject_infos/1.json
  def update
    respond_to do |format|
      if @subject_info.update(subject_info_params)
        format.html { redirect_to @subject_info, notice: 'Subject info was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_info }
      else
        format.html { render :edit }
        format.json { render json: @subject_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_infos/1
  # DELETE /subject_infos/1.json
  def destroy
    @subject_info.destroy
    respond_to do |format|
      format.html { redirect_to subject_infos_url, notice: 'Subject info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_info
      @subject_info = SubjectInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_info_params
      params.require(:subject_info).permit(:subject_id, :subject_name, :exam_id, :maximum_marks)
    end
end
