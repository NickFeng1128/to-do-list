class List < ApplicationRecord
  mount_uploader :image, ListImageUploader
  validates_presence_of :due_date, :name, :note
  
end
