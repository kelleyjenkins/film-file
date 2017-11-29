class Film < ActiveRecord::Base

  validates_presence_of :title, :year, :box_office_sales


  def self.total_box_office_sales
    sum(:box_office_sales)
  end

  def self.average_total_box_office_sales
    total_box_office_sales/count.to_f
  end

end
