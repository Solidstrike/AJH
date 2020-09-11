# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  company                :string
#  company_logo           :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  is_admin               :boolean
#  last_name              :string
#  phone_number           :string
#  profile_image          :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  title                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :reviews, dependent: :destroy
   has_many :new_project_requests, dependent: :destroy
   has_many :posts, dependent: :destroy
   has_many :invoices, inverse_of: :user

   has_one_attached :image
   has_one_attached :company_logo
   validates :first_name, presence: true
   validates :last_name, presence: true 

  scope :not_admins, -> { where(is_admin: [false, nil])}

  def admin?
    is_admin
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
