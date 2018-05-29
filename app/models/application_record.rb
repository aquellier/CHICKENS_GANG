class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end


# class Flat
#   belongs_to :owner, class_name: 'User'
