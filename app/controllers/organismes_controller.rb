class OrganismesController < ApplicationController
    def new
        @organisme = Organisme.new

    end

    def create
        @organisme = Organisme.new(organisme_params)

        if @organisme.save
            redirect_to @organisme
        else
            render plain: params[:organisme].inspect
        end
    end

    def show
        @organisme = Organisme.find(params[:id])
    end

    private
  def organisme_params
    params.require(:organisme).permit(:nom, :couriel, :site_web, adresse: [:no_civique, :rue, :ville, :province, :code_postal],
     telephone: [:bureau, :telecopie])
  end
end
