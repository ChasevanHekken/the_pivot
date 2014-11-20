require 'rails_helper'

RSpec.describe Role, :type => :model do
  let(:role) do
    Role.create(name: "completed")
  end

  it "is valid" do
    expect(role).to be_valid
  end

  it "is valid if no role is provided" do
    role.name = nil
    expect(role).to be_valid

    role.name = ""
    expect(role).to be_valid
  end

end
