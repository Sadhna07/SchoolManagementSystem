class AttendenceInfosController < ApplicationController
  before_action :set_attendence_info, only: [:edit, :destroy]
  skip_before_filter :verify_authenticity_token
  # GET /attendence_infos
  # GET /attendence_infos.json
  def index
    @attendence_infos = AttendenceInfo.order('record_date').all
  end

  # GET /attendence_infos/1
  # GET /attendence_infos/1.json
  def show
    @students = StudentInfo.where(referenced_class_id: params[:id]).all
  #puts YAML::dump(@students)
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
    puts "================================="
    puts YAML::dump(params)
    puts "================================="
    params.each do |key,value|
      if (key.is_a? String)
        if(key.first == 's' )
          name = ""
          name << key
          name[0]= ''
          puts "Yessss"
          student_id_absent = name.to_i
          puts "id="
          puts student_id_absent
          old_record = AttendenceInfo.where(:student_id => student_id_absent).all.where(:record_date => params[:record_date]).all
#          puts "OLD RECORD = "
#          puts YAML::dump(old_record)
          puts "old_record.size = "
          puts old_record.size
          if old_record != nil && old_record.size > 0
            puts "Already present"
          else
            a = AttendenceInfo.new
            a.student_id = student_id_absent
            a.record_date = params[:record_date]
            a.status = "Absent"
            a.save!
            puts "Supposed to Save"
          end

        else
          puts "Noooo"
        end
      else
        puts "Noooo22222"
      end
    end
    redirect_to attendence_infos_url
  #respond_to do |format|
  #  if @attendence_info.update(attendence_info_params)
  #    format.html { redirect_to @attendence_info, notice: 'Attendence info was successfully updated.' }
  #    format.json { render :show, status: :ok, location: @attendence_info }
  #  else
  #    format.html { render :edit }
  #   format.json { render json: @attendence_info.errors, status: :unprocessable_entity }
  # end
  #end
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
