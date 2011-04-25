module Imhotep
  class PagesController < ApplicationController
    def show
      @page = resource_class.find_by_path_and_name(params[:path], params[:name])
      
      if @page
        respond_with(@page)
      else
        respond_to do |format|
          format.html { redirect_to :action => :edit, :path => params[:path] }
          format.any  { head :not_found }
        end
      end
    end

    def edit
      @page = resource_class.find_or_build(params[:path], params[:name])
      respond_with(@page)
    end

    def update
      @page = resource_class.find_or_build(params[:path], params[:name])
      @page.attributes = params[:page]
      @page.save
      respond_with(@page, :location => { :action => :show })
    end

    def destroy
      @page = resource_class.find_by_path_and_name(params[:path], params[:name])
      @page.destroy
      respond_with(@page)
    end

    def resource_class
      self.class.name.sub(/Controller$/, "").singularize.constantize
    end
  end
end
