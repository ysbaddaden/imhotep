# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{imhotep}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Julien Portalier"]
  s.date = %q{2011-04-16}
  s.description = %q{Wiki engine for Ruby on Rails.}
  s.email = %q{ysbaddaden@gmail.com}
  s.files = [
    "lib/imhotep.rb",
    "lib/imhotep/config.rb",
    "lib/imhotep/controllers/pages_controller.rb",
    "lib/imhotep/models/page.rb",
    "lib/imhotep/routes.rb"
  ]
  s.homepage = %q{http://github.com/ysbaddaden/imhotep}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Wiki engine for Ruby on Rails.}
  s.test_files = [
    "test/functional/pages_controller_test.rb",
    "test/functional/routes_test.rb",
    "test/functional/wiki_controller_test.rb",
    "test/rails_app/app/controllers/application_controller.rb",
    "test/rails_app/app/controllers/home_controller.rb",
    "test/rails_app/app/controllers/pages_controller.rb",
    "test/rails_app/app/controllers/wiki_controller.rb",
    "test/rails_app/app/helpers/application_helper.rb",
    "test/rails_app/app/models/page.rb",
    "test/rails_app/app/models/wiki.rb",
    "test/rails_app/config/application.rb",
    "test/rails_app/config/boot.rb",
    "test/rails_app/config/environment.rb",
    "test/rails_app/config/environments/development.rb",
    "test/rails_app/config/environments/production.rb",
    "test/rails_app/config/environments/test.rb",
    "test/rails_app/config/initializers/imhotep.rb",
    "test/rails_app/config/initializers/secret_token.rb",
    "test/rails_app/config/initializers/session_store.rb",
    "test/rails_app/config/routes.rb",
    "test/rails_app/db/migrate/20110416154842_create_pages.rb",
    "test/rails_app/db/migrate/20110416154847_create_wiki.rb",
    "test/rails_app/db/schema.rb",
    "test/rails_app/db/seeds.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.6"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.6"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.6"])
  end
end
