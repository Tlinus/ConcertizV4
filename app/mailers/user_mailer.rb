class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def confirmation_achat(user)
        @user = user
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Test de l envoi d un email O_O')
    end


end
