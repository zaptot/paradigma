class ChildrenDisorder < ApplicationRecord
  belongs_to :child
  belongs_to :disorder
end
