class User < ApplicationRecord
  enum status: [:active, :desactive]

  def self.active_all(users)
	User.where("id IN (?)",users).update_all("status = 0")
  end

  def self.desactive_all(users)
  	User.where("id IN (?)",users).update_all("status = 1")
  end

  def self.order_by_id
  	order(:id)
  end
end
