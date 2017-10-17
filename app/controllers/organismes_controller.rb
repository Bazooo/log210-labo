class OrganismesController < ApplicationController
    def new
        @organisme = Organisme.new
        @organisme.build_adresse
        @organisme.build_telephone
    end

    def create
        @organisme = Organisme.new(organisme_params)

        if @organisme.save
            redirect_to @organisme
        else
            render 'new'
        end
    end

    def show
        @organisme = Organisme.find(params[:id])
    end

    def edit #edit fields
        @organisme = Organisme.find(params[:id])
    end

    def update #update instance
        @organisme = Organisme.find(params[:id])

        if @organisme.update(organisme_params)
          redirect_to @organisme
        else
          render 'edit'
        end
    end

    def destroy #delete instance
        @organisme = Organisme.find(params[:id])
        @organisme.destroy
        redirect_to organismes_path
    end

    def index #list all
        @organismes = Organisme.all
    end
private
  def organisme_params
    params.require(:organisme).permit(:nom, :couriel, :site_web, adresse_attributes: [:id, :no_civique, :rue, :ville, :province, :code_postal],
     telephone_attributes: [:id, :bureau, :telecopie])
  end
end
