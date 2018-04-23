# frozen_string_literal: true

require 'singleton'

module Space2dash
  class Executor
    include Singleton

    def run_with_raw(dash_include_sentence)
      run dash_include_sentence
    end

    def run_with_downcase(dash_include_sentence)
      run dash_include_sentence.downcase
    end

    private

    def run(sentence)
      exit system "git checkout -b #{sentence}"
    end
  end
end
