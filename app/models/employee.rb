class Employee < ApplicationRecord
  def full_name
    "#{surname} #{name} #{fathername}"
  end
end
