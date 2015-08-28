require 'space2dash/version'

module Space2dash
  class << self
    def convert(argv)
      argv.length == 1 ? argv[0].strip.gsub(/\s/,  '-') : argv.join('-')
    end

    def create_new_branch(dash_include_sentence)
      system "git checkout -b #{dash_include_sentence}"
    end
  end
end
