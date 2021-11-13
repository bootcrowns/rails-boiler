class Staff < ApplicationRecord
  include AASM
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :timeoutable, :trackable, :recoverable, :validatable, :registerable

  enum role: %i[admin hq-agent student agent]

  # Validations
  # validates :phone_number, uniqueness: true, presence: true, phone: {
  #   possible: true,
  #   allow_blank: true,
  #   types: [:mobile],
  #   countries: [:in]
  # }

  validates :email, uniqueness: true
  before_validation :setup_and_format_phone_number

  aasm column: :status do
    state :active, initial: true
    state :inactive

    event :activate do
      transitions from: :inactive, to: :active
    end

    event :deactivate do
      transitions from: :active, to: :inactive
    end
  end
  
  before_save do
    if self.new_record?
      self.role ||= :admin
    end
  end



  def setup_and_format_phone_number
    unless phone_number.blank?
      phone = Phonelib.parse(phone_number, "IN")
      unless phone.invalid?
        self.phone_number = phone.e164
      end
    end
  end
  
  def setup_defaults
    self.phone_number = Phonelib.parse(phone_number, "IN").e164
  end
end
