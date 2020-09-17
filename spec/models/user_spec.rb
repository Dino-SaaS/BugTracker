require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }

  it 'is invalid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
