class ReforganismsController < ApplicationController
    before_action :coordonateur_and_up

    def new
        @organisme = Reforganism.new
        @organisme.build_address
        @organisme.build_telephone
    end

    def create
        @organisme = Reforganism.new(organisme_params)
        # /render plain: params[:article].inspect/

        if @organisme.save
            redirect_to @organisme
        else
            render 'new'
        end
    end

    def show
        @organisme = Reforganism.find(params[:id])
    end

    def edit #edit fields
        @organisme = Reforganism.find(params[:id])
        @address = @organisme.address
        @telephone = @organisme.telephone
    end

    def update #update instance
        @organisme = Reforganism.find(params[:id])

        if @organisme.update(organisme_params)
          redirect_to @organisme
        else
          render 'edit'
        end
    end

    def destroy #delete instance
        @organisme = Reforganism.find(params[:id])
        @organisme.update_attribute(:active, false)
        redirect_to reforganisms_path
    end

    def index #list all
        @organismes = Reforganism.all
    end
private
  def organisme_params
    params.require(:reforganism).permit(:name, :email, :website, address_attributes: [:id, :civic_number, :street, :city, :province, :postcode],
     telephone_attributes: [:id, :work, :fax])
  end

  def coordonateur_and_up
    if current_user.assistant?
      redirect_to root_path, :alert => "Access denied"
    end
  end
end
