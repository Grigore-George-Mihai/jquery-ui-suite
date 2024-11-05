# frozen_string_literal: true

require "rails/generators"

module JqueryUiSuite
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def create_initializer_file
        template "jquery_ui_suite_initializer.rb", "config/initializers/jquery_ui_suite.rb"
      end
    end
  end
end
