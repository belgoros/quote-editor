class LineItemDate < ApplicationRecord
  belongs_to :quote
  validates :date, presence :true, uniquenes: { scope: :quote_id }
  scope :ordered, -> { order(date: :asc)}
end
