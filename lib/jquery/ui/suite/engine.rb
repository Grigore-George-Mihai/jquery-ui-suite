# frozen_string_literal: true

module Jquery
  module Ui
    module Suite
      class Engine < ::Rails::Engine
        initializer "jquery-ui-suite.assets" do |app|
          %w[javascript stylesheets].each do |sub|
            app.config.assets.paths << root.join("vendor", sub)
          end
        end

        initializer "jquery-ui-suite.assets.precompile" do |app|
          theme = Jquery::Ui::Suite.config.jquery_ui_theme || "base"
          include_jquery = Jquery::Ui::Suite.config.include_jquery

          precompiled_assets = [
            "jquery-ui/themes/#{theme}/jquery-ui.min.css",
            "jquery-ui/themes/#{theme}/theme.css",
            "jquery-ui/themes/#{theme}/images/*",
            "jquery-ui-1.14.1.min.js"
          ]

          precompiled_assets << "jquery-3.7.1.min.js" if include_jquery

          app.config.assets.precompile += precompiled_assets
        end
      end
    end
  end
end
