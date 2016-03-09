class About < ActiveRecord::Base
  belongs_to :admin
  has_many :propoints, dependent: :destroy
  accepts_nested_attributes_for :propoints, :reject_if => :all_blank, :allow_destroy => true
end
