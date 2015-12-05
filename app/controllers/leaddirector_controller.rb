class LeaddirectorController < ApplicationController
	def index
    @leaddirectors = Leaddirector.all
  end

#   	def show
#   		@leaddirector = Leaddirector.find(params[:id])
# 	end
#  def new
#     @leaddirector = Leaddirector.new
#   end


# private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_leaddirector
#       @leaddirector = Leaddirector.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def leaddirector_params
#       params.require(:leaddirector).permit(:directorname)
#     end
end
