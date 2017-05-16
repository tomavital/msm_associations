class Character < ApplicationRecord
has_many :movies, :through => :characters
belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")
#   Character:
#  - movie_id: must be present
validates :movie_id, :presence => true
#  - actor_id: must be present
validates :actor_id, :presence => true
#  - name: no rules
#

end
