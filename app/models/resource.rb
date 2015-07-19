class Resource < ActiveRecord::Base
  belongs_to :admin
  has_many :articlepoints
  has_many :webpoints
  has_many :telpoints
  accepts_nested_attributes_for :articlepoints, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :webpoints, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :telpoints, :reject_if => :all_blank, :allow_destroy => true
end
