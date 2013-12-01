class Finding < ActiveRecord::Base
  validates :general_statement, :faculty_signature, :signature,  presence: true
  belongs_to :children
  
end
