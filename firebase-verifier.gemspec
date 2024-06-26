# frozen_string_literal: true

require_relative "lib/firebase-verifier/version"

Gem::Specification.new do |spec|
  spec.name = "firebase-verifier"
  spec.version = FirebaseVerifier::VERSION
  spec.authors = ["KuruStudio"]
  spec.email = ["mail@kuru.studio"]

  spec.summary = "Verifier of Firebase Token"
  spec.description = "Verifier of Firebase Token. This is used to extract important details in a Firebase Token."
  spec.homepage = "https://kuru.studio"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kuru-studio/firebase-verifier"
  spec.metadata["changelog_uri"] = "https://kuru.studio"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
