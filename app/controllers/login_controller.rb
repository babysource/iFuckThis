class LoginController < ApplicationController
  def show
    unless session[:iFuckUser].blank?
      redirect_to :controller => 'diary', :action => 'show'
    end
  end

  def join
    unless session[:iFuckUser].blank?
      render :json => '{"rsp":1}'
      return
    end
    username = params[:user]
    password = params[:pass]
    unless username.blank? || password.blank?
      session[:iFuckUser] = Login.select('id, name').where(:user => username, :pass => password).first
      unless session[:iFuckUser].blank?
        render :json => '{"rsp":1}'
        return
      end
    end
    render :json => '{"rsp":0}'
  end

  def exit
    unless session[:iFuckUser].blank?
      session.delete(:iFuckUser)
    end
    redirect_to :root
  end
end