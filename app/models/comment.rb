class Comment < ApplicationRecord
  belongs_to :simple
  belongs_to :user 
end
