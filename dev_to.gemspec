# frozen_string_literal: true

require_relative "lib/dev_to/version"

Gem::Specification.new do |spec|
  spec.name = "devto-ruby"
  spec.version = DevTo::VERSION
  spec.authors = ["wasabigeek"]
  spec.email = ["wasabigeek@users.noreply.github.com"]

  spec.summary = "Unofficial Ruby library for working with the DEV (dev.to) API."
  spec.description = "Unofficial Ruby library for working with the DEV (dev.to) API."
  spec.homepage = "https://github.com/wasabigeek/devto-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wasabigeek/devto-ruby"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "resource_kit", "~> 0.1.7"
  spec.add_dependency "faraday", "~> 2.2"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rubocop"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
