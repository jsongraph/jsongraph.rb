require 'jsongraph'
require 'pathname'

ROOT=File.expand_path('..', File.dirname(__FILE__))

def path(*args)
  return nil if args.empty?
  tokens = args.flatten
  tokens.reduce(Pathname(tokens.shift)) { |path, t| path += t }
end
# vim: ts=2 sts=2 sw=2
# encoding: utf-8
