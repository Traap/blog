# frozen_string_literal: true

# Blog Visible concern
module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = %w[public private archived].freeze

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_cound
    where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
