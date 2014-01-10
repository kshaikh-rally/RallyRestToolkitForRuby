# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rally_api/version"

Gem::Specification.new do |spec|
  spec.name               = "rally_api"
  spec.version            = RallyAPI::VERSION
  spec.authors            = ["Dave Smith"]
  spec.email              = ["dsmith@rallydev.com"]
  spec.homepage           = "https://github.com/RallyTools/RallyRestToolkitForRuby"
  spec.summary            = "A wrapper for the Rally Web Services API using json"
  spec.description        = "API wrapper for Rally's JSON REST web services api"
  spec.rubyforge_project  = "rally_api"
  spec.license            = 'MIT'
  spec.has_rdoc           = false

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             'httpclient',   '~> 2.3.0'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency "bundler",      "= 1.5.1"
  spec.add_development_dependency "rake",         "= 10.1.0"
  spec.add_development_dependency "rspec",        "= 2.14.0"
  spec.add_development_dependency "geminabox",    "= 0.10.7"
  spec.add_development_dependency "simplecov",    "= 0.7.1"
  spec.add_development_dependency "ci_reporter",  "= 1.9.0"
end