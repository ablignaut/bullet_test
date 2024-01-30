class DataFile < ApplicationRecord
  # 🚅 add concerns above.

  attr_accessor :document_removal
  # 🚅 add attribute accessors above.

  belongs_to :team
  # 🚅 add belongs_to associations above.

  # 🚅 add has_many associations above.

  has_one_attached :document
  # 🚅 add has_one associations above.

  # 🚅 add scopes above.

  # 🚅 add validations above.

  after_validation :remove_document, if: :document_removal?
  # 🚅 add callbacks above.

  # 🚅 add delegations above.

  def document_removal?
    document_removal.present?
  end

  def remove_document
    document.purge
  end
  # 🚅 add methods above.
end
