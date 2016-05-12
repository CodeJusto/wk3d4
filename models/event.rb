class Event < ActiveRecord::Base
  belongs_to :user
  has_many :ticket_inventories, dependent: :destroy
  has_many :tickets, :through => :ticket_inventories

  validates :title, presence: true, on: :create
  # validates :title, presence: true, if: "self.id.nil?"
  validates :capacity, presence: true, numericality: true, if: :check_capacity?
  # validates :capacity, numericality: true, unless: :check_capacity?

  validate :description_changed_when_live, on: :update

  private

  def check_capacity?
    self.capacity > 10
  end

  def description_changed_when_live
    if is_live && changed.include?("description")
      errors.add(:description, "You cannot change description once live.")
    end
  end
end
