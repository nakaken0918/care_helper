class Profile < ApplicationRecord

  has_one_attached :image
  validate :validate_image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender

  include ActiveModel::Model
  attr_accessor :person, :relationship, :address, :email, :phone, :patient_id

  belongs_to :user
  has_one :contact

  with_options presence: true do
    validates :patient
    validates :barth
    validates :gender_id
    validates :blood_type
    validates :work
    validates :family

    validates :person
    validates :relationship
    validates :address
    validates :email
    validates :phone
    validates :patient_id
  end

  def save
    Contact.create(
    person: person, relationship: relationship, address: address,
    email: email, phone: phone, patient_id: patient_id
    )
  end

  private

  def validate_image
    if image.blank?
      errors.add(:image, "のファイルを選択してください")
    end
  end

end
