class ResultInfosController < ApplicationController
  before_action :set_result_info, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /result_infos
  # GET /result_infos.json
  def index
    @result_infos = ResultInfo.all
  end

  # GET /result_infos/1
  # GET /result_infos/1.json
  def show
  end

  def select
    @result_info = ResultInfo.new
  end
  
  def redirect_to_new
    puts "RRRRRRRRRRRRRRRRR"
    puts YAML::dump(params)
#    redirect_to 'result_info/new?class_id='+params[:result_info][:exam_id]+'&subject_id='+params[:result_info][:subject_id]
 
#    redirect_to :action => 'new', :class_id => params[:exam_id],  :subject_id => params[:subject_id]
    redirect_to new_result_info_path(:class_id => params[:result_info][:exam_id],  :subject_id => params[:result_info][:subject_id]), :notice => 'items updated'
  end
  
  # GET /result_infos/new
  def new
    puts "INNNNNNNN NNEWWWWWWWW"
    puts YAML::dump(params)
    if params[:class_id].present? == false
      redirect_to result_infos_select_path;
    end
    @students = StudentInfo.where(referenced_class_id: params[:class_id]).all
    @subject_id = params[:subject_id]
    @result_info = ResultInfo.new
  end

  # GET /result_infos/1/edit
  def edit
  end

  # POST /result_infos
  # POST /result_infos.json
  def create
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
          puts key
          student_id_absent = name.to_i
          puts "id="
          puts student_id_absent
          old_record = ResultInfo.where(:student_id => student_id_absent).all.where(:subject_id => params[:result_subject_id].to_i).all
          puts "OLD RECORD = "
          puts YAML::dump(old_record)
          puts "old_record.size = "
          puts old_record.size
          if old_record != nil && old_record.size > 0
            puts "Already present"
          else
            a = ResultInfo.new
            a.student_id = student_id_absent
            a.subject_id = params[:result_subject_id].to_i
            a.marks_obtained = value.to_i
            a.save!
            puts "Supposed to Save"
          end
        end
        #else
        #  puts "Noooo"
        end
      #else
      #  puts "Noooo22222"
      end
    """
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
    """
    redirect_to result_infos_url
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
