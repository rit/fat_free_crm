class ActionView::Helpers::InstanceTag
  alias_method :orig_add_options, :add_options
  private
    def add_options(option_tags, options, value = nil)
      if options[:include_myself]
        option_tags = "<option value=\"#{options[:include_myself]}\">Myself</option>\n" + option_tags
      end
      orig_add_options(option_tags, options, value = nil)
    end
end

