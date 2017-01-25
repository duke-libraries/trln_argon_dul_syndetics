require 'rails/generators'

module TrlnArgon
  class Install < Rails::Generators::Base

    source_root File.expand_path('../templates', __FILE__)

    desc "Install TRLN Argon Engine"

    def verify_blacklight_installed
      if !IO.read('app/controllers/application_controller.rb').include?('include Blacklight::Controller')
         raise "Install Blacklight before installing TRLN Argon."
      end
    end

    def install_configuration_file
      copy_file "trln_argon_config.yml", "config/trln_argon_config.yml"
    end

    def install_search_builders
      copy_file "search_builders/trln_search_builder.rb", "app/models/trln_search_builder.rb"
      copy_file "search_builders/consortium_search_builder.rb", "app/models/consortium_search_builder.rb"
    end

    def install_helpers
      copy_file "helpers/catalog_helper.rb", "app/helpers/catalog_helper.rb"
      copy_file "helpers/trln_argon_helper.rb", "app/helpers/trln_argon_helper.rb"
    end

    def install_stylesheet
      copy_file "trln_argon.scss", "app/assets/stylesheets/trln_argon.scss"
    end

    def inject_catalog_controller_overrides
      unless IO.read("app/controllers/catalog_controller.rb").include?('TrlnArgon')
        insert_into_file "app/controllers/catalog_controller.rb", :after => "include Blacklight::Marc::Catalog" do
          "\n\n  # CatalogController behavior and configuration for TrlnArgon"\
          "\n  include TrlnArgon::ControllerOverride\n"
        end
      end
    end

  end
end
