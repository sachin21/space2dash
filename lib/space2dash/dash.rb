# frozen_string_literal: true

module Space2dash
  class Dash
    def initialize(sentence)
      @sentence = sentence
    end

    def convert
      if @sentence.length == 1
        @sentence[0].strip.gsub(/\s/, '_')
      else
        @sentence.join('_')
      end
    end
  end
end
