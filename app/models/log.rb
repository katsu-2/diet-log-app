class Log < ApplicationRecord
  validates :name, presence: true
  validates :protein, presence: true
  validates :carbohydrate, presence: true
  validates :fat, presence: true
  validates :start_time, presence: true
  belongs_to :user


  def self.sumkcal 
    return (sumprotein * 4 + sumcarbohydrate * 4 + sumfat * 9) 
  end

  def self.sumprotein
    sum(:protein) 
  end
  def self.sumcarbohydrate
    sum(:carbohydrate) 
  end
  def self.sumfat
    sum(:fat) 
  end
end


def is_this_month(from_time)
  return (from_time.gsub(/(.{3})$/, '') == Date.today.strftime('%Y-%m'))
end


