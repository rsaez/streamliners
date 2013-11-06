class Child < ActiveRecord::Base
  has_many :health_record, dependent: :destroy
  has_many :physical_exam, dependent: :destroy
  has_many :finding, dependent: :destroy
  def self.search(search)
     if search.nil?
       search=""
     end
     search_condition = "%" + search + "%"
     if !search.empty?
       find(:all, :conditions => ['name LIKE ?',search_condition])
     else

      find(:all)

     end
   end
end
