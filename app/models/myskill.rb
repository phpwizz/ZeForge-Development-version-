class Myskill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :user_id, presence: true
  validates :skill_id, presence: true
  validates_uniqueness_of :skill_id, scope: :user_id
end
