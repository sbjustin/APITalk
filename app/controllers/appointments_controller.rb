class AppointmentsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def allAppointments
    @appointments = Appointment.all
    respond_to  do |format|
      format.xml  { render :xml => @appointments }
      format.json { render :json => @appointments }
    end
  end 

  def create
    #
    @appointment = Appointment.new
    @appointment.update_attributes!(params)
    respond_to  do |format|
      format.xml  { render :xml => @appointment }
      format.json { render :json => @appointment }
    end
  end


  def todaysAppointments
    @appointments = Appointment.where("date_time BETWEEN ? and ? ", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
    respond_to  do |format|
      format.xml  { render :xml => @appointments }
      format.json { render :json => @appointments }
    end
  end 

  def tomorrowsAppointments
    @appointments = Appointment.where("date_time BETWEEN ? and ? ", DateTime.now.beginning_of_day + 1, DateTime.now.end_of_day + 1)
    respond_to  do |format|
      format.xml  { render :xml => @appointments }
      format.json { render :json => @appointments }
    end
  end 

  def appointmentsByOfficeName
    @officename = params[:officename]
    @office = Office.where("name = ? ", @officename)
    puts @office.id
    @appointments = Appointment.find(office_id: @office.id)

    respond_to  do |format|
      format.xml  { render :xml => @appointments }
      format.json { render :json => @appointments }
    end
  end

    def appointmentsByOfficeId
      @appointments = Appointment.where("office_id = ? ", params[:id])
      
      respond_to  do |format|
        format.xml  { render :xml => @appointments }
        format.json { render :json => @appointments }
    end
  end

  def appointmentsByPatientId
      @appointments = Appointment.where("patient_id = ? ", params[:id])
      
      respond_to  do |format|
        format.xml  { render :xml => @appointments }
        format.json { render :json => @appointments }
    end
  end

end