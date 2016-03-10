class IndexController < ApplicationController
  def show
    unless session[:iFuckUser].blank?
      return
    end
    redirect_to :root
  end

  def fill
    unless session[:iFuckUser].blank?
      filldate = Diary.select('DISTINCT(date)').where(:user => session[:iFuckUser].id)
      unless filldate.blank?
        filljson = []
        filldate.each do |mark|
          filljson.push({:title => '', :start => mark.date, :className => 'fc-event-done'})
        end
        render :json => filljson.to_json
        return
      end
      render :json => '[]'
    end
  end
end
