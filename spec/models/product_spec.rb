require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:color) }
  end
end
