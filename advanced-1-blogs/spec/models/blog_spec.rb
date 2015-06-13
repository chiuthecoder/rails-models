require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'requires a name' do
    # your code here
  end

  it 'requires a description' do
    # your code here
  end

  describe 'relationships' do
    it 'has many posts' do
      # your code here
    end

    it 'has many owners' do
      # your code here
    end

    it 'has many users through owners' do
      # your code here
    end
  end
end