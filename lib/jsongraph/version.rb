module JsonGraph

  # This module provides access to the version number of the
  # jsongraph library.
  module Version
    VERSION_FILE = File.expand_path('../../VERSION', File.dirname(__FILE__))
    MAJOR, MINOR, PATCH = File.read(VERSION_FILE).chomp.split('.')
    STRING = [MAJOR, MINOR, PATCH].join('.').freeze

    # Returns the version string.
    # @return [String] version string
    def Version.to_s
      STRING
    end

    # Returns the version number segments (Major, Minor, Patch).
    # @return [Array] version number segments
    def Version.to_a
      [MAJOR, MINOR, PATCH]
    end
  end
end
# vim: ts=2 sts=2 sw=2
# encoding: utf-8
