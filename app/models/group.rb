class Group < ActiveRecord::Base
   has_many :invitations
end
# == Schema Information
#
# Table name: groups
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  repo        :string(255)
#  description :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

