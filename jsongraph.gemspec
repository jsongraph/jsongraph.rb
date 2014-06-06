# load version relative to gemspec
require File.expand_path("lib/jsongraph/version", File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name          = "jsongraph.rb"
  s.version       = JsonGraph::Version
  s.licenses      = ["MIT"]
  s.summary       = "JsonGraph library for Rubies"
  s.description   = %q{Implements the json-graph-specification for Rubies.
                       This library provides serializers and validators.}.
                    gsub(%r{^\s+}, " ").gsub(%r{\n}, "")
  s.authors       = ["Anthony Bargnesi"]
  s.email         = "abargnesi@gmail.com"
  s.files         = Dir.glob("lib/**/*.rb") << "LICENSE"
  s.homepage      = "https://rubygems.org/gems/jsongraph"

  #runtime dependencies
  s.add_runtime_dependency "multi_json",  "~> 1.10"
  s.add_runtime_dependency "json-schema", "~> 2.2"

  # development dependencies
  s.add_development_dependency "rake",               "~> 10.3"
  s.add_development_dependency "yard",               "~> 0.8.7"
  s.add_development_dependency "bundler",            "~> 1.6"
  s.add_development_dependency "pry",                "~> 0.9.12"
  s.add_development_dependency "pry-debugger",       "~> 0.2"
  s.add_development_dependency "pry-doc",            "~> 0.6"
  s.add_development_dependency "pry-nav",            "~> 0.2"
  s.add_development_dependency "rspec-core",         "~> 3.0"
  s.add_development_dependency "rspec-expectations", "~> 3.0"
end
# vim: ts=2 sw=2:
# encoding: utf-8
