class User < ActiveRecord::Base
  after_create :create_account
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  has_many :accounts
  has_many :transactions, :through => :accounts
  has_many :ads

  validates :username, :presence => true, :uniqueness => true, :length => {:minimum => 3, :maximum => 15}

  def to_s
    "#{username}"
  end

  private

  def create_account
    Account.create(user_id: self.id, currency_id: 1, credit_limit: 0, balance: 0)
  end
end
