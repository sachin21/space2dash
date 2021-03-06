# frozen_string_literal: true

require 'singleton'

module Space2dash
  class Printer
    include Singleton

    def run_with_raw(branch)
      run branch
    end

    def run_with_downcase(branch)
      run branch.downcase
    end

    private

    def run(branch)
      $stdout.puts branch
    end
  end
end
