class Wiki < ActiveRecord::Base
  include Imhotep::Models::Page
  set_table_name :wiki
end
