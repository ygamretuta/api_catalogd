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

require 'test_helper'

class CatalogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
