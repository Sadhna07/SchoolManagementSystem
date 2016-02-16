class StudentInfosController < ApplicationController
  before_action :set_student_info, only: [:show, :edit, :update, :destroy]

  # GET /student_infos
  # GET /student_infos.json
  def index
    @student_infos = StudentInfo.all
  end

  # GET /student_infos/1
  # GET /student_infos/1.json
  def show
  end

  # GET /student_infos/new
  def new
    @student_info = StudentInfo.new
  end

  # GET /student_infos/1/edit
  def edit
  end

  # POST /student_infos
  # POST /student_infos.json
  def create
    @student_info = StudentInfo.new(student_info_params)

    respond_to do |format|
      if @student_info.save
        format.html { redirect_to @student_info, notice: 'Student info was successfully created.' }
        format.json { render :show, status: :created, location: @student_info }
      else
        format.html { render :new }
        format.json { render json: @student_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_infos/1
  # PATCH/PUT /student_infos/1.json
  def update
    respond_to do |format|
      if @student_info.update(student_info_params)
        format.html { redirect_to @student_info, notice: 'Student info was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_info }
      else
        format.html { render :edit }
        format.json { render json: @student_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_infos/1
  # DELETE /student_infos/1.json
  def destroy
    @student_info.destroy
    respond_to do |format|
      format.html { redirect_to student_infos_url, notice: 'Student info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_info
      @student_info = StudentInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_info_params
      params.require(:student_info).permit(:student_id, :student_name, :referenced_class_id)
    end
end
