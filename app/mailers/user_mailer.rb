class UserMailer < ApplicationMailer
    default from: 'no-reply@eventbrite.fr'
 
    def welcome_email(user)
      @user = user
      @url  = 'still-everglades-68166.herokuapp.com'
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

end

