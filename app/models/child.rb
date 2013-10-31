class Child < ActiveRecord::Base
  has_many :health_record, dependent: :destroy
  has_many :physical_exam, dependent: :destroy
  has_many :finding, dependent: :destroy
end
