class Instructor::Base < ApplicationController
  private def current_ir_member
    if session[:ir_member_id]
      @current_ir_member ||=
      IrMember.find_by(id:session[:ir_members_id])
    end
  end

  helper_method :current_ir_member
end