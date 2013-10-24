class Child < ActiveRecord::Base
  has_many :health_record, dependent: :destroy
end
