class Child < ApplicationRecord
  def full_name
    "#{surname} #{name}"
  end
end
