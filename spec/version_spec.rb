require 'spec_helper'

describe "Access to version information" do
  subject { JsonGraph::Version }
  it "provides the string version" do
    expect(subject).to respond_to(:to_s)
    expect(subject.to_s).to eq(File.read(path(ROOT, 'VERSION')).chomp)
  end

  it "provides each numeric position" do
    expect(subject).to respond_to(:to_a)
    expect(subject.to_a).to eq(File.read(path(ROOT, 'VERSION')).chomp.split('.'))
  end
end
# vim: ts=2 sts=2 sw=2:
# encoding: utf-8
