require 'rails_helper'

RSpec.describe Map, type: :model do
  describe "validations" do
    subject { FactoryGirl.create(:map) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:starting_latitude) }
    it { is_expected.to validate_presence_of(:starting_longitude) }
  end
end
