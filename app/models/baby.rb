class Baby < ApplicationRecord
    belongs_to :list
    validates :baby_name, presence: true
    validates :baby_name, uniqueness: {:scope => :list_id}
    validates :baby_name, format: { with: /\A[a-zA-Z]+\z/, message: "letters only"}

end
