class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances

#   validates :start_date, presence: true
#   validates :start_date, if: :in_the_past?
    
#   validates :duration, presence: true
#   validates :duration, if: :multiple_of_5?

#   validates :title, presence: true
#   validates :title, length: { in: 5..140 }

#   validates :description, presence: true
#   validates :description, length: { in: 20..1000 }

#   validates :price, presence: true
#   validates :price, length: { in: 1..1000 }
   
#   validates :location, presence: true
      
#   def in_the_past?
#     time = Time.now
#     if self.start_date < time
#       errors.add(:base,  "Date de debut erroné")
#       false
#     end
#     true
#  end

#  def multiple_of_5?
#     res = self.duration % 5
#     if res.positive?
#       errors.add(:base, 'erreur date de durée')
#       false
#     end

#     if self.negative?
#        errors.add(:base, 'erreur durée negative')
#        false
#     end
#     true
#  end

end
