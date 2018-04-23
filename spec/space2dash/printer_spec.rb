# frozen_string_literal: true

require 'spec_helper'

describe Space2dash::Printer do
  let(:branch) { 'FOO_bar' }
  let(:instance) { described_class.instance }

  subject { -> { method } }

  describe '#run_with_raw' do
    let(:method) { instance.run_with_raw(branch) }

    it { is_expected.to output(/FOO_bar/).to_stdout }
  end

  describe '#run_with_downcase' do
    let(:method) { instance.run_with_downcase(branch) }

    it { is_expected.to output(/foo_bar/).to_stdout }
  end
end
