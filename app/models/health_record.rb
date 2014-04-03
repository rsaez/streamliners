class HealthRecord < ActiveRecord::Base
  belongs_to :child
  validate :hemoglobin_validation, if: :is_hemoglobin_taken
  validate :height_weight_for_blood_tests, if: :blood_being_drawn
  

  def  height_weight_for_blood_tests
    errors.add(:weight,"Measure Height and Weight before doing this test") if !is_height_weight_taken
  end

  def is_hemoglobin_taken
    return !hemoglobin.nil?
  end
  
  def blood_being_drawn 
    return is_hemoglobin_taken
  end

  def is_height_weight_taken
    return !height_feet.nil? && !weight_lbs.nil?
  end

  def hemoglobin_validation
    errors.add(:hemoglobin,"is too high. Must be less than 18. Contact Authorities") if hemoglobin >= 18
    
    if self.child.age_years != nil
      if self.child.age_years >=2 && self.child.age_years <=5
        errors.add(:hemoglobin,"Abnormal value for Hemoglobin. Contact Authorities.") if hemoglobin >= 18 || hemoglobin < 11.3
      else
        errors.add(:hemoglobin,"Abnormal value for Hemoglobin. Contact Authorities.") if hemoglobin >=18 || hemoglobin < 12  
      end
    end

    if  self.child.gender == "Male"
      errors.add(:hemoglobin,"Abnormal value for Hemoglobin. Contact Authorities.") if hemoglobin >=18 || hemoglobin < 12.3  
    else 
      errors.add(:hemoglobin,"Abnormal value for Hemoglobin. Contact Authorities.") if hemoglobin >=18 || hemoglobin < 11.8
    end  
  end
end
