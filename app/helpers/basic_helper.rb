module BasicHelper
  def translated_text(*args)
    t("#{args.join(".")}")
  end

  def label_with_hint(section, detail)
    "#{label_text(section, detail)} #{translated_text(:simple_form, :label_hints, section, detail)}"
  end

  def label_text(section, detail)
    "#{translated_text(:simple_form, :labels, section, detail)}"
  end
end
