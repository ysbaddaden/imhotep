require 'imhotep/config'
require 'imhotep/routes'

module Imhotep
  autoload :PagesController, "imhotep/controllers/pages_controller"

  module Models
    autoload :Page, "imhotep/models/page"
  end

  def self.config
    yield Imhotep::Config
  end
end
