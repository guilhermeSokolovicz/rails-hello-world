class Role < ApplicationRecord
  belongs_to :superior, class_name: 'Role', optional: true
  has_many :subordinates, class_name: 'Role'
end
