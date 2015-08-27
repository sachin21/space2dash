require 'spec_helper'

describe Space2dash do
  it 'should be Successful execution' do
    expect(Space2dash.convert(['fuga hoge foo'])).to include('-') # String case
    expect(Space2dash.convert(%w(fuga hoge foo))).to include('-') # Array case
  end
end
