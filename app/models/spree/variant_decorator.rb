Spree::Variant.class_eval do
  def price=(value)
    write_attribute(:price, SpreeLocalize.normalize_number(value))
  end

  [:old_price, :cost_price, :weight, :height, :width, :depth].each do |attribute|
    define_method("#{attribute}=") do |value|
      write_attribute(attribute, SpreeLocalize.normalize_number(value))
    end
  end
end
