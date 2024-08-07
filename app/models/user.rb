class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      validates :nickname, presence: true
      validates :family_name, presence: true, format: { with: /\A[ぁ-んァ-ヶー一-龠々]+\z/, message: 'は全角の漢字・ひらがな・カタカナで入力してください' }
      validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶー一-龠々]+\z/, message: 'は全角の漢字・ひらがな・カタカナで入力してください' }
      validates :family_name_kana, presence: true, format: { with: /\A[ァ-ヶー]+\z/, message: 'は全角のカタカナで入力してください' }
      validates :first_name_kana, presence: true, format: { with: /\A[ァ-ヶー]+\z/, message: 'は全角のカタカナで入力してください' }
      validates :birth_day, presence: true

        end
