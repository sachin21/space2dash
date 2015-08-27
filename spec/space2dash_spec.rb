require 'spec_helper'

describe Space2dash do
  it 'should be Successful execution' do
    expect(Space2dash.convert(['fuga hoge foo'])).to include('-') # String case
    expect(Space2dash.convert(%w(fuga hoge foo))).to include('-') # Array case
  end

  it 'should be Successful copied' do
    expect(Space2dash.generate_command('fuga-hoge-foo')).to eq("echo fuga-hoge-foo | ruby -pe 'chomp' | pbcopy")
  end
end
