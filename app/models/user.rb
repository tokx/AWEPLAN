class User < ActiveRecord::Base
  validates :firstname, :length => {:maximum => 50}, presence: true  
  validates :lastname, :length => {:maximum => 50}, presence: true  
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: valid_email_regex },
                    uniqueness: { case_sensitive: false }
  belongs_to :group
  has_many :invitations
end
# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  email      :string(255)
#  pubkey     :string(255)
#  admin      :boolean
#  group_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

