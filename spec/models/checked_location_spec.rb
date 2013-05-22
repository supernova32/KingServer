require 'spec_helper'

describe CheckedLocation do
  it { should belong_to :user }
  it { should belong_to :hidden_location }
end
