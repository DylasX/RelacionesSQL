class Job < ActiveRecord::Base
  belongs_to :person
  has_one :salary_range
  #validaciones
  validates :tittle, :company, presence:true #Validando que titulo y la compañia existan
end
