require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe "#password=" do
    example "文字列を与えると、hashed_passworは長さ60の文字列になる" do
      member = Organization.new
      member.password = "yogaworld"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)  
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      member = Organization.new(hashed_password:"x")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end
