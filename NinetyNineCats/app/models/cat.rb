class Cat < ApplicationRecord
  CAT_COLORS = %w(black orange white pink)
  validates :birth_date, presence: true
  validates :sex, inclusion: { in: %w(M F), message: 'We are not gender non-conforming here.'}
  validates :color, presence: true, inclusion: { in: CAT_COLORS }

  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

  def age
    Time.now.year - :birth_date
  end


end
