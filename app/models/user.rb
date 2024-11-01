class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  audited expect: %i[ ecncypted_password reset_password_token reset_password_sent_at remember_created_at ccurrent_sign_in_at last_sign_in_at ccurrent_sign_in_ip last_sign_in_ip ],
    max_audits: 10
  has_associated_audits

  enum role: { user: 0, admin: 1 }
  has_many :posts, dependent: :destroy
end
