require 'spec_helper'

describe Todo do
  it { should belong_to(:destination) }
  it { should belong_to(:traveller) }
end
