class AttendanceMailer < ApplicationMailer
   default from: 'no-reply@eventbrite.fr'

   def welcome_participant(attendance)
      @user = attendance.user
      @url = 'still-everglades-68166.herokuapp.com'
      mail(to: @user.email, subject: 'un utilisateur c\'est inscrit a votre event')
   end
end
