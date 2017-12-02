class ServicepointsController < ApplicationController
    before_action :director_only
    def new
        service_point = Servicepoint.new
    end

    def create
        @service_point = Servicepoint.new(service_point_params)
        @organism = Organism.find(@service_point.organism_id)
        if @service_point.save
            redirect_to organism_path(@organism)
        end
    end

    def show
        @room = Room.new
        @service_point = Servicepoint.find(params[:id])
        @organisme = Organism.find(@service_point.organism_id)
    end

    def edit #edit fields
        @service_point = Servicepoint.find(params[:id])
        @organism = Organism.find(@service_point.organism_id)
    end

    def update #update instance
        @service_point = Servicepoint.find(params[:id])
        @organism = Organism.find(@service_point.organism_id)
        if @service_point.update(service_point_params)
          redirect_to @organism
        else
          render 'edit'
        end
    end

    def destroy #delete instance
        @service_point = Servicepoint.find(params[:id])
        @organism = Organism.find(@service_point.organism_id)
        @service_point.destroy
        redirect_to organism_path(@organism)
    end

    private
        def service_point_params
            params.require(:servicepoint).permit(:name, :address, :phone, :email, :fax, :organism_id)
        end

        def director_only
            unless current_user.directeur?
                redirect_to root_path, :alert => "Access denied."
        end
    end
end
