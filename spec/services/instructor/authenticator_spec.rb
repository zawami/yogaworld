require "rails_helper"

describe "Instructor::Authenticator" do
  describe "#authenticate" do
    example "正しいパスワードならtureを返す" do
      m = build(:ir_member)
      expect(Instructor::Authenticator.new(m).authenticate("pw")).to be_truthy
    end
    
    example "誤ったパスワードならfalseを返す" do
      m = build(:ir_member)
      expect(Instructor::Authenticator.new(m).authenticate("xy")).to be_falsey
    end

    example "パスワード未設定ならfalseを返す" do
      m = build(:ir_member,password: nil)
      expect(Instructor::Authenticator.new(m).authenticate(nil)).to be_falsey  
    end
  end
  
  
end
