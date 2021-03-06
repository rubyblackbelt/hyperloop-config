# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hyperloop-config"
  spec.version       = "0.9.11"
  spec.authors       = ["catmando"]
  spec.email         = ["mitch@catprint.com"]

  spec.summary       = %q{Provides a single point configuration module for hyperloop gems}
  spec.homepage      = "http://ruby-hyperloop.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'opal'
  spec.add_dependency 'opal-browser'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency 'hyper-spec'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'opal-rails'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'jquery-rails'

  # Keep linter-rubocop happy
  spec.add_development_dependency 'rubocop'

end
