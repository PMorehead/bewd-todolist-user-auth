class Task < ApplicationRecord
  belongs_to :user

  def index
    @tasks = Task.all
    render 'tasks/index'
  end

  validates :content, length: { maximum: 200 }, presence: true
end
