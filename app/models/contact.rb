# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  comment    :text
#  email      :string
#  name       :string
#  subject    :string
#  telephone  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: Devise.email_regexp
 
validates :comment, presence: :true
end
