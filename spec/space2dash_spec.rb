require 'spec_helper'

describe Space2dash do
  let(:branch_name) { 'foo-bar' }
  let(:hidden) { '&> /dev/null'}

  it 'returns dash included in string' do
    expect(Space2dash.convert(['fuga hoge foo'])).to include('-') # String case
    expect(Space2dash.convert(%w(fuga hoge foo))).to include('-') # Array case
  end

  def checkout_and_remove_branch
    checkout_master = "git checkout master #{hidden}"
    delete_branch = "git branch -D #{branch_name} #{hidden}"

    system("#{checkout_master}; #{delete_branch}")
  end

  def create_branch
    system("git branch #{branch_name} #{hidden}")
  end

  describe '.create_new_branch' do
    after { checkout_and_remove_branch }

    context "when exist a git repository" do
      before { checkout_and_remove_branch }

      it 'creates the new branch' do
        expect(Space2dash.create_new_branch(branch_name)).to be_truthy
      end
    end

    context "when exist a git repository" do
      before { create_branch }

      it 'creates the new branch' do
        expect(Space2dash.create_new_branch(branch_name)).to be_falsey
      end
    end
  end
end
