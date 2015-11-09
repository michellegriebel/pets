class Pet < ActiveRecord::Base
    validates :name, :variety, :person_id, presence: true
    belongs_to :person
    VARIETIES=%w(dog cat fish bird)
    validates :variety, inclusion:{in:Pet::VARIETIES}
end
