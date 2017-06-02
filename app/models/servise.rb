class Servise < ActiveRecord::Base
  belongs_to :user
  validates :active_serv, :type_serv, :price_serv, presence: true
  validates :active_serv, :type_serv, length:{in: 0..64}
  validates :type_serv, inclusion: {in: ['1', '2','3', '4','5', '6']}
  validates :active_serv, numericality: {greater_than_or_equal_to: 0}
  validates :user, presence: true
end
