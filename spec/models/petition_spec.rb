require 'rails_helper'

RSpec.describe Petition, type: :model do
  it 'passes' do
    expect(Petition).to be_present
  end
end
