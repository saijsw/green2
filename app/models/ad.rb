class Ad < ActiveRecord::Base
  belongs_to :user
  has_one :category

  attr_accessible :title, :description, :offer, :expiration_date, :category_id

  validates_presence_of :title
  validates_presence_of :description
end
