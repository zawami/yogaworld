class Instructor::SessionsController < Instructor::Base
  def new
    if current_ir_member
      redirect_to :instructor_root
    else
      @form = Instructor::LoginForm.new
      render action: "new"
    end
  end

  def create
    @form = Instructor::LoginForm.new(params[:instructor_login_form])
    if @form.email.present?
      ir_member = IrMember.find_by("LOWER(email) = ?", @form.email.downcase)
    end
    if Instructor::Authenticator.new(ir_member).authenticate(@form.password)
      session[:ir_member_id] = ir_member.id
      flash[:success] = "ログインしました"
      redirect_to :instructor_root
    else
      flash.now[:danger] = "メールアドレスまたはパスワードが正しくありません。"
      render action: "new"
    end
  end

  def destroy
    session.delete(:ir_member_id)
    flash[:info] = "ログアウトしました。"
    redirect_to :instructor_root
  end
end
