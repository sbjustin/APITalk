class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    respond_to  do |format|
      format.xml  { render :xml => @patients }
      format.json { render :json => @patients }
    end
  end 

  def create
    byebug
    @patient = Patient.new()
    @patient.name = params[:name]
    @patient.save
  end

  def photo
    # http://thecatapi.com/api/images/get?format=src&results_per_page=1&category=
    category = params[:type]
    
    url = URI.parse('http://thecatapi.com/api/images/get?format=src&results_per_page=1')
    
    if @category
      url = @url + "&category=" & @category.to_s
      req = Net::HTTP::Get.new(url.to_s)
      @res = Net::HTTP.start(url.host, url.port) {|http|
        http.request(req)
      }
    else
      req = Net::HTTP::Get.new(url.to_s)
      @res = Net::HTTP.start(url.host, url.port) {|http|
        http.request(req)
      }
    end

    respond_to  do |format|
      format.xml  { render :xml => @res.body }
      format.json { render :json => @res.body }
    end

  end

end