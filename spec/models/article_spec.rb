require 'rails_helper'

describe Article, :type => :model do
  it { should validate_presence_of(:name) }
end
