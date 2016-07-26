class Person < ActiveRecord::Base
  has_many :jobs
  has_one :personal_info
  validates :login, uniqueness: true
  has_and_belongs_to_many :hobbies
  has_many :approx_salaries, through: :jobs, source: :salary_range
  depend: :destroy
  scope :starts_with, -> (starting_string){
    where("first_name LIKE ?","#{starting_string}%")
   }

end
