# Scaffolding generated by Casein v5.1.1.5

module Casein
  class SlidesController < Casein::CaseinController
    before_action :set_slide, only: [:show, :update, :destroy]
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Slides'
  		@slides = Slide.order(sort_order(:nombre)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'Ver slide'
    end

    def new
      @casein_page_title = 'Agregar un nuevo slide'
    	@slide = Slide.new
    end

    def create
      @slide = Slide.new slide_params

      if @slide.save
        flash[:notice] = 'Slide creado'
        redirect_to casein_slides_path
      else
        flash.now[:warning] = 'Se encontraron problemas al crear un nuevo slide'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Editar slide'

      if @slide.update_attributes slide_params
        flash[:notice] = 'Se ha actualizado el slide'
        redirect_to casein_slides_path
      else
        flash.now[:warning] = 'Se encontraron problemas al actualizar este slide'
        render :action => :show
      end
    end

    def destroy
      @slide.destroy
      flash[:notice] = 'Se ha eliminado el slide'
      redirect_to casein_slides_path
    end

    private
      def set_slide
        @slide = Slide.find(params[:id])
      end

      def slide_params
        params.require(:slide).permit(:nombre, :img, :subtitulo)
      end

  end
end