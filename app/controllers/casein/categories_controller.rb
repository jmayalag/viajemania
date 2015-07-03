# Scaffolding generated by Casein v5.1.1.5

module Casein
  class CategoriesController < Casein::CaseinController
    before_action :set_category, only: [:show, :update, :destroy]
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Categorias'
  		@categories = Category.order(sort_order(:nombre)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'Ver categoría'
    end
  
    def new
      @casein_page_title = 'Agregar nueva categoría'
    	@category = Category.new
    end

    def create
      @category = Category.new category_params
    
      if @category.save
        flash[:notice] = 'Categoría creada'
        redirect_to casein_categories_path
      else
        flash.now[:warning] = 'Se encontraron problemas al crear nueva categoría'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Editar categoría'

      if @category.update_attributes category_params
        flash[:notice] = 'Categoría actualizada'
        redirect_to casein_categories_path
      else
        flash.now[:warning] = 'Se encontraron problemas al actualizar esta categoría'
        render :action => :show
      end
    end
 
    def destroy
      @category.destroy
      flash[:notice] = 'Se ha eliminado la categoría'
      redirect_to casein_categories_path
    end
  
    private

      def set_category
        @category = Category.friendly.find(params[:id])
      end

      def category_params
        params.require(:category).permit(:nombre, :descripcion)
      end

  end
end