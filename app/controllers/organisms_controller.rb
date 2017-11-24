class OrganismsController < ApplicationController
    before_action :director_only

    def new
        @organisme = Organism.new
        @user = current_user
    end

    def create
        @organisme = Organism.new(organisme_params)
        @organisme.user_id = current_user.id
        if @organisme.save
            redirect_to @organisme
        else
            render 'new'
        end
    end

    def show
        @servicepoint = Servicepoint.new
        @organisme = Organism.find(params[:id])
    end

    def edit #edit fields
        @organisme = Organism.find(params[:id])
        @servicepoints = Servicepoint.all
    end

    def update #update instance
        @organisme = Organism.find(params[:id])

        if @organisme.update(organisme_params)
          redirect_to @organisme
        else
          render 'edit'
        end
    end

    def destroy #delete instance
        @organisme = Organism.find(params[:id])
        @organisme.destroy
        redirect_to organisms_path
    end

    def index #list all
        @organismes = Organism.all
    end


    private
    def director_only
        unless current_user.directeur?
            redirect_to root_path, :alert => "Access denied."
    end

    def organisme_params
        params.require(:organism).permit(:name, :address, :phone, :email, :fax , :user_id)
    end
  end
end
