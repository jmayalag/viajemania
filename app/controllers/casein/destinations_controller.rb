# Scaffolding generated by Casein v5.1.1.5

module Casein
  class DestinationsController < Casein::CaseinController
    before_action :set_destination, only: [:show, :update, :destroy]
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Destinos'
  		@destinations = Destination.order(sort_order(:nombre)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'Ver destino'
    end
  
    def new
      @casein_page_title = 'Agregar un nuevo destino'
    	@destination = Destination.new
    end

    def category_new
      @casein_page_title = 'Agregar un nuevo destino'
      @category = Category.friendly.find(params[:id])
      @destination = Destination.new(category: @category)
    end

    def create
      @destination = Destination.new destination_params
    
      if @destination.save
        flash[:notice] = 'Destino creado'
        redirect_to casein_destinations_path
      else
        flash.now[:warning] = 'Se encontraron problemas al crear nuevo destino'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Editar destino'
      
      if @destination.update_attributes destination_params
        flash[:notice] = 'Se ha actualizado el destino'
        redirect_to casein_destinations_path
      else
        flash.now[:warning] = 'Se econtraron problemas al actualizar este destino'
        render :action => :show
      end
    end
 
    def destroy
      @destination.destroy
      flash[:notice] = 'Se ha eliminado el destino'
      redirect_to casein_destinations_path
    end
  
    private
      def set_destination
        @destination = Destination.friendly.find(params[:id])
      end

      def destination_params
        params.require(:destination).permit(:nombre, :descripcion, :link, :costo, :imagen, :category_id, :front_image)
      end

  end
end