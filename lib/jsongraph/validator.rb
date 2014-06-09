SCHEMA = File.expand_path "json-graph-schema.json", File.dirname(__FILE__)
require 'json'
require 'json-schema'

module JsonGraph
  class Validator

    def initialize
      @schema = JSON.parse File.read(SCHEMA)
    end

    def does_validate?(doc)
      JSON::Validator.validate(@schema, doc, :insert_defaults => true)
    end

    def validate(doc)
      JSON::Validator.fully_validate(@schema, doc, :insert_defaults => true)
    end
  end
end
