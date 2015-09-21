module Spree
  class AvalaraEntityUseCode < ActiveRecord::Base
    has_many :users, class_name: Spree.user_class.to_s, foreign_key: :avalara_entity_use_code_id

    def label
      "#{use_code}) #{use_code_description}"
    end
  end
end
