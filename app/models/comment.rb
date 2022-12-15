# frozen_string_literal: true

# Blog Comment Model.
class Comment < ApplicationRecord
  include Visible

  belongs_to :article
end
