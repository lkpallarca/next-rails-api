class Job < ApplicationRecord
  STATUS = ["hiring", "selecting", "closed"].freeze

  enum status: STATUS.index_with(&:titleize)

  validates_presence_of :title
  validates_presence_of :company
  validates_presence_of :summary
  validates :target_deadline, presence: true, comparison: { greater_than: Time.now }

  before_commit :set_job_status, on: [:create]
  before_commit :set_job_location, on: [:create], if: -> { location.blank? }
  before_commit :set_job_salary_offer, on: [:create], if: -> { salary_offer.blank? }
  
  def past_deadline?
    Time.now > target_deadline
  end

  private

  def valid_deadline?
    target_deadline > Time.now
  end

  def set_job_status
    self.status = :hiring
  end
  
  def set_job_location
    self.location = "Philippines"
  end
  
  def set_job_salary_offer
    self.salary_offer = 0
  end
end