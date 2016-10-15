# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  slogan            :string
#  mission_statement :string
#  street            :string
#  zip_code          :string
#  city              :string
#  country           :string
#  revenue           :decimal(, )
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
