class Instructor::Authenticator
  def initialize(ir_member)
    @ir_member = ir_member
  end

  def authenticate(raw_password)
    @ir_member &&
      @ir_member.hashed_password &&
      BCrypt::Password.new(@ir_member.hashed_password) == raw_password
  end
end
