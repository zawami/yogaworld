require 'rails_helper'

RSpec.describe IrMember, type: :model do
  describe "password=" do
    example "文字列を与えると、hashed_password　は長さ60の文字になる" do
      member = IrMember.new
      member.password = "foobar"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)  
    end
  
    example "nilを与えると、hashed_passwordはnilになる" do
      member = IrMember.new(hashed_password:"x")
      member.password = nil
      expect(member.hashed_password).to be_nil  
    end
  end
end
