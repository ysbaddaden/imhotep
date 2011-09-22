module Imhotep
  class PagesController < ApplicationController
    def show
      if resource.persisted?
        respond_with(resource)
      else
        respond_to do |format|
          format.html { redirect_to :action => :edit, :path => params[:path], :name => params[:name] }
          format.any  { head :not_found }
        end
      end
    end

    def edit
      respond_with(resource)
    end

    def update
      resource.attributes = params[:page]
      resource.save
      respond_with(resource, :location => redirect_location)
    end

    def destroy
      resource.destroy
      respond_with(resource)
    end

    protected
      def redirect_location
        { :action => 'show' }
      end

      def resource
        @page ||= if request.delete?
          resource_class.find_by_path_and_name(params[:path], params[:name])
        else
          resource_class.find_or_build(params[:path], params[:name])
        end
      end

      def resource_class
        @resource_class ||= self.class.name.sub(/Controller$/, "").singularize.constantize
      end
  end
end
