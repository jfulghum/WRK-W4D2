class CatRentalRequest < ApplicationRecord
  STATUS = %w(PENDING APPROVED DENIED)
  validates :cat_id, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }


  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_request
    #get to this TODO
  end
end
