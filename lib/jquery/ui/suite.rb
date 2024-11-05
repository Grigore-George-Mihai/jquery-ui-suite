# frozen_string_literal: true

require_relative "suite/version"
require_relative "suite/engine"

module Jquery
  module Ui
    module Suite
      class Error < StandardError; end

      class << self
        attr_accessor :config

        def setup
          yield(config)
        end
      end

      self.config = ActiveSupport::OrderedOptions.new
      config.jquery_ui_theme = "base"
      config.include_jquery = true
    end
  end
end
