require 'spec_helper'

describe "Validation of json graph content" do
  subject { JsonGraph::Validator }
  describe "validates returning binary response" do
    subject { JsonGraph::Validator.new }
    it "malformed json returns false" do
      expect( subject.does_validate? "[{}" ).to be false
    end
    it "invalid json graph schema returns false" do
      json = '{ "foo": { "bar": "baz" } }'
      expect( subject.does_validate? json ).to be false
    end

    it "valid json graph schema returns true" do
      valid_documents = [
        '{ "graph": { "id": "0" } }',
        '{ "graph": { "id": "0", "nodes": [], "edges": [] } }',
        '{ "graphs": [] }',
        '{ "graphs": [ { "id": "0" }, {"id": "1" }] }'
      ]

      valid_documents.each do |doc|
        expect( subject.does_validate? doc ).to be true
      end
    end
  end

  describe "validates returning errors" do
    subject { JsonGraph::Validator.new }
  end
end
# vim: ts=2 sts=2 sw=2:
# encoding: utf-8
