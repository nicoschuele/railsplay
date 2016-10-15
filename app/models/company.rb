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

class Company < ApplicationRecord
  validates :name, presence: true
  validates :revenue, numericality: true
end
