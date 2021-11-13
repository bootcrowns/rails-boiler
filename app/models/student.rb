class Student < ApplicationRecord
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true
  validates :registered_id, uniqueness: true

  before_validation :generate_registered_id

  def full_name
    first_name + " " + last_name
  end

  def generate_registered_id
    # generate upto 10 digit length numbers and convert to a string with base 10
    # then pad 0s if the length of the number is less than 10
    if registered_id.blank?
      i = 0
      loop do
        random_number = SecureRandom.random_number(10**10).to_s(10).rjust(10, "0").upcase
        # Prefix will provide extra grouping in future
        # Stock Location + Store can be a prefix combination
        # We could also archive a complete group if necessary of orders and rotate the prefix to next alphabet
        num = "A#{random_number}"
        self.registered_id = num
        i += 1
        break if Student.find_by(registered_id: num).blank? || i >= 10
      end
    end
  end

end
