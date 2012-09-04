# ClientSideValidations Initializer

require 'client_side_validations/simple_form' if defined?(::SimpleForm)
require 'client_side_validations/formtastic'  if defined?(::Formtastic)

# Uncomment the following block if you want each input field to have the validation messages attached.
# ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#   unless html_tag =~ /^<label/
#     %{<div class="field_with_errors">#{html_tag}<label for="#{instance.send(:tag_id)}" class="message">#{instance.error_message.first}</label></div>}.html_safe
#   else
#     %{<div class="field_with_errors">#{html_tag}</div>}.html_safe
#   end
# end

module ClientSideValidations
  module SimpleForm
    module FormBuilder
      def self.included(base)
        base.class_eval do
          def self.client_side_form_settings(options, form_helper)
            wrapper_object = ::SimpleForm.wrappers[options[:wrapper]] || ::SimpleForm.wrappers[:default]
            input_error = wrapper_object.find(:error).defaults
            wrapper = wrapper_object.defaults

            error_container_class = input_error[:class] # help-block
            input_error_tag = input_error[:tag] # "span"
            error_tag = wrapper[:class].join(" ") #clearfix
            error_class = wrapper[:error_class] # error

            {
              :type => self.to_s,
              :error_class => [error_container_class, error_class].join(" ."),
              :error_tag => input_error_tag,
              :wrapper_error_class => error_class,
              :wrapper_tag => ".#{error_tag}"
            }
          end
        end
      end # included
    end # FormBuilder
  end # SimpleForm
end # ClientSideValidations

SimpleForm::FormBuilder.send(:include, ClientSideValidations::SimpleForm::FormBuilder)
