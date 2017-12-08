class RoomsController < ApplicationController
    before_action :director_only

    def create
        @room = Room.new(room_params)
        @servicepoint = Servicepoint.find(@room.servicepoint_id)
        if @room.save
            redirect_to servicepoint_path(@servicepoint)
        end
    end

    def show
        @room = Room.find(params[:id])
        @servicepoint = Servicepoint.find(@room.servicepoint_id)
    end

    def edit #edit fields
        @room = Room.find(params[:id])
        @servicepoint = Servicepoint.find(@room.servicepoint_id)
    end

    def update #update instance
        @room = Room.find(params[:id])
        @servicepoint = Servicepoint.find(@room.servicepoint_id)
        if @room.update(room_params)
          redirect_to @servicepoint
        else
          render 'edit'
        end
    end

    def destroy #delete instance
        @room = Room.find(params[:id])
        @servicepoint = Servicepoint.find(@room.servicepoint_id)
        @room.destroy
        redirect_to servicepoint_path(@servicepoint)
    end

    private
        def room_params
            params.require(:room).permit(:name, :places, :serviceType, :servicepoint_id)
        end

        def director_only
            unless current_user.directeur?
                redirect_to root_path, :alert => "Access denied."
        end
    end
end
