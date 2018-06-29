class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
      format.html { render layout: 'welcome_email' }
      format.text { render layout: 'welcome_email' }
    end
  end
end
