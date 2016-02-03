class OfficesController < ApplicationController

  def index
    @offices = Office.all
    respond_to  do |format|
      format.xml  { render :xml => @offices }
      format.json { render :json => @offices }
    end

  end

end