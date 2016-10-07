class Custom < ActiveRecord::Base
  validates :name, presence: {message: "не может быть пустым!"}
end
