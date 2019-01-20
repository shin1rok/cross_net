class GymnasiaController < ApplicationController
  before_action :set_gymnasium, only: [:show]

  # GET /gymnasia
  # GET /gymnasia.json
  def index
    # TODO
    # @search_form = GymnasiumSearchForm.new(params[:search])
    # @gymnasia = @search_form.search
    @gymnasia = Gymnasium.all
  end

  # GET /gymnasia/1
  # GET /gymnasia/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gymnasium
      @gymnasium = Gymnasium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gymnasium_params
      params.require(:gymnasium).permit(:name,
                                        :zip_code,
                                        :prefecture_id,
                                        :city,
                                        :street,
                                        :tell,
                                        :url,
                                        :access,
                                        :court,
                                        :note,
                                        :search)
    end

  def gymnasium_search_form_params
    params.require(:gymnasium_search_form).permit(:prefecture_id)
  end
end
