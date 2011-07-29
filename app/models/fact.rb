class Fact < ActiveRecord::Base
  scope :random_record,     order("RAND()").limit(1)
  
  def self.random_record_s 
    random_record.first
  end
end
