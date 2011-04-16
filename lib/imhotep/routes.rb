module ActionDispatch # :nodoc:
  module Routing # :nodoc:
    class Mapper
      def imhotep(*resources)
        options = resources.extract_options!
        
        resources.each do |resource|
          options[:except] = [:new, :create]
          options[:path] = "#{options[:path] || resource}(/*path)/:name"
          self.resource resource, options
        end
      end
    end
  end
end
