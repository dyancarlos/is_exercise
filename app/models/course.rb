class Course < ActiveRecord::Base
  has_many :classrooms

  validates :name, :description, :status, presence: true
  validates :name, :description, length: { maximum: 45 }

  def self.get_status
    [["Ativo", Status::ACTIVE], ["Inativo", Status::INATIVE]]
  end
end
