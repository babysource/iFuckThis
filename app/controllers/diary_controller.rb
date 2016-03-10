class DiaryController < ApplicationController
  def show
    unless session[:iFuckUser].blank?
      @today = params[:today] || Time.now.strftime("%Y-%m-%d")
      @thing = Diary.select('id, done').where(:user => session[:iFuckUser].id, :date => @today).order('id')
      return
    end
    redirect_to :root
  end

  def save
    unless session[:iFuckUser].blank?
      donedate = params[:date]
      donetask = params[:done]
      unless donedate.blank? || donetask.blank?
        if Diary.create(:user => session[:iFuckUser].id, :date => donedate, :done => donetask)
          render :json => '{"rsp":1}'
          return
        end
      end
      render :json => '{"rsp":0}'
    end
  end

  def edit
    unless session[:iFuckUser].blank?

    end
  end

  def wipe
    unless session[:iFuckUser].blank?
      donesign = params[:clear]
      unless donesign.blank?
        Diary.delete(donesign)
      end
      redirect_to :back
    end
  end
end
