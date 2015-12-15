# coding: utf-8

require 'space2dash/version'

# This is the main functions.
module Space2dash
  def self.convert(argv)
    argv.length == 1 ? argv[0].strip.gsub(/\s/, '-') : argv.join('-')
  end

  def self.create_new_branch(dash_include_sentence)
    system "git checkout -b #{dash_include_sentence} &> /dev/null"
  end
end
