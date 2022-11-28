# frozen_string_literal: true

class User < ApplicationRecord
  # == Constants ===============================================================

  # == Attributes ==============================================================

  # == Extensions ==============================================================

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  # == Relationships ===========================================================

  # == Validations =============================================================

  validates :name, length: { maximum: 50 }, presence: true

  validates :username, format: { with: /\A[a-z0-9_-]+\z/ },
                       length: { in: 1..30 },
                       presence: true,
                       uniqueness: true

  # == Scopes ==================================================================

  # == Callbacks ===============================================================

  # == Class Methods ===========================================================

  # == Instance Methods ========================================================
end
