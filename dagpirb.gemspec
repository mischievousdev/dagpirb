lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dagpirb/version'

readme = File.open('README.md')

Gem::Specification.new do |spec|
  spec.name          = "dagpirb"
  spec.version       = Dagpi::VERSION
  spec.authors       = ["mischievousdev"]

  spec.summary       = "dagpirb is an API Wrapper for dagpi.xyz written in ruby!"
  spec.description   = "Dagpirb is a Simple, powerfull API Wrapper for dagpi.xyz. For more info see: https://github.com/mischievousdev/dagpi.rb/"
  spec.homepage      = "https://github.com/mischievousdev/dagpi.rb/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mischievousdev/dagpirb/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
