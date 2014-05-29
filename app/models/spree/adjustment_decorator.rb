Spree::Adjustment.class_eval do
  scope :avalara_tax, -> { where(adjustable_type: 'Spree::AvalaraTransaction') }

end