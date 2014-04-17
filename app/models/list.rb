class List < ActiveRecord::Base
  has_many :tasks, dependent: :destroy, order: "due_date"
  accepts_nested_attributes_for :tasks
  attr_accessible :title, :tasks_attributes

  validates :title, presence: true
end
