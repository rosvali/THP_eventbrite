class Attendance < ApplicationRecord
    belongs_to :user
    belongs_to :event
   after_create :participant_send

     def participant_send
         AttendanceMailer.welcome_participant(self).deliver_now
     end

end
