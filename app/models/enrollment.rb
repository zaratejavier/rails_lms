class Enrollment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :course
end
