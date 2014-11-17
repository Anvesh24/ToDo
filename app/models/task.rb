# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  done       :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Task < ActiveRecord::Base
  #scope :done, -> {where(done: true)}
  #scope :pending, -> {where(done: false)}

  validates :title, presence: true

  def mark_done!(status)
    update_attribute(:done, status)
  end
end
