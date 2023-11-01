require 'rails_helper'

RSpec.describe OrderForm, type: :model do
  describe "validations" do
    it { should validate_presence_of(:customer) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:total) }
    it { should validate_presence_of(:products) }
  end
end
