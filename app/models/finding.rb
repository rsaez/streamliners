class Finding < ActiveRecord::Base
  serialize :diagnosis_treatment
  belongs_to :children
  
end
