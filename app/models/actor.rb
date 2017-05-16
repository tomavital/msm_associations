class Actor < ApplicationRecord
  has_many :characters
  has_many :movies, :through => :characters
  # Actor:
  #  - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob}
  #  - dob: no rules
  #  - bio: no rules
  #  - image_url: no rules

end
