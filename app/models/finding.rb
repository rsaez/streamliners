class Finding < ActiveRecord::Base
  serialize :diagnosis_treatment, Hash
  belongs_to :children
  
end
