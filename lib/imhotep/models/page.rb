module Imhotep
  module Models
    module Page
      extend ActiveSupport::Concern

      included do
        attr_protected :path, :name, :created_at, :updated_at
      end

      module ClassMethods
        def find_or_build(path, name, attributes = nil)
          page = find_by_path_and_name(path, name)
          
          unless page
            page = new
            page.path = path
            page.name = name
          end
          
          page
        end
      end
    end
  end
end
