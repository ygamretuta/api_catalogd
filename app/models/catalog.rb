# == Schema Information
#
# Table name: catalogs
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  user_id     :integer
#  active      :boolean          default("true")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Catalog < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
end
