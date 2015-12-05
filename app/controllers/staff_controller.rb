class StaffController < ApplicationController
	def index
		@staffs = Staff.all
	end

	def show
    @staff = Staff.find(params[:id])
  end

  # GET /projects/new
  def new
    @staff = Staff.new
  end
end
