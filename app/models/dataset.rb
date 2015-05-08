class Dataset < ActiveRecord::Base

  def to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << Dataset.column_names
      
        csv << self.attributes.values_at(*Dataset.column_names)
      
    end
  end

end
