require 'spec_helper'

describe HiddenLocation do
  it { should have_many :users }
  it { should have_many :checked_locations }
end
