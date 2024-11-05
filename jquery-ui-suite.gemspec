# frozen_string_literal: true

require_relative "lib/jquery/ui/suite/version"

Gem::Specification.new do |spec|
  spec.name          = "jquery-ui-suite"
  spec.version       = Jquery::Ui::Suite::VERSION
  spec.authors       = ["George Mihai Grigore"]
  spec.email         = ["grigore.george.mihaii@gmail.com"]

  spec.summary       = "Rails gem providing jQuery and jQuery UI integration with theme configuration."
  spec.description   = "A Rails gem that integrates jQuery and jQuery UI into your application, offering easy theme configuration and importmap compatibility."
  spec.homepage      = "https://github.com/Grigore-George-Mihai/jquery-ui-suite"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  # Metadata links for easy access to source and documentation
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = spec.homepage

  # Specify files to include in the gem
  spec.files = Dir["lib/**/*", "vendor/**/*", "README.md", "LICENSE"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_dependency "sprockets-rails"

  # Optional development metadata
  spec.metadata["rubygems_mfa_required"] = "true"
end
