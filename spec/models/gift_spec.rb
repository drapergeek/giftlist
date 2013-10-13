require 'spec_helper'

describe Gift do
  it { should validate_presence_of(:name) }
end
