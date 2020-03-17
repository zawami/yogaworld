class Instructor::IrMembersController < ApplicationController
  def show
    @ir_member=IrMember.find(params[:id])
  end

  def new
    @ir_member=IrMember.new
  end
end
