class Parent < ActiveRecord::Base
  has_many :children, dependent: :destroy
  accepts_nested_attributes_for :children, reject_if: proc { |a| a[:child_name].blank?}, allow_destroy: true
end
