class Customer < ApplicationRecord
  has_many :rentals, dependent: :destroy

  def increase_videos_checked_out
    self.videos_checked_out_count += 1
    self.save
  end

  def decrease_videos_checked_out
    self.videos_checked_out_count -= 1
    self.save
  end
end
