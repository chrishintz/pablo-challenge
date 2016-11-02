class SessionsController < ApplicationController

  def sign_out
    session.delete(:user_id)
    redirect_to "/", notice: "You were signed out."
  end

  def sign_in
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      @current_user = session[:user_id]
      flash[:notice] = 'Hi Again!'
      redirect_to dashboard_path(@current_user)
    else
      flash[:notice] = 'Please try again'
      render('users/new')
    end
  end

end
