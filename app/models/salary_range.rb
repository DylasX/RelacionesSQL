class SalaryRange < ActiveRecord::Base
  belongs_to :job

  validate :min_is_less_than_max
  def min_is_less_than_max

    if min_salary > max_salary
      errors.add(:min_salary,"no puede ser mayor")

    end

  end
end
