class Finding < ActiveRecord::Base
  validates :faculty_signature, presence: true
  belongs_to :children
  
end
