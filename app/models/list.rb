class List < ApplicationRecord
  mount_uploader :image, ListImageUploader
  # 圖像上傳器
  validates_presence_of :due_date, :name, :note
  # 驗證項目
end
