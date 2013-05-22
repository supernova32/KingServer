require 'spec_helper'

describe Building do
  it { should have_many :rooms }
end
