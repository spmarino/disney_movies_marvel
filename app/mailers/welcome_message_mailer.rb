class WelcomeMessageMailer < ApplicationMailer
    def signup_email
        @user = params[:user]
        mail(to: @user.email, subject: 'Welcome to the world of Marvel movies')
    end
end
