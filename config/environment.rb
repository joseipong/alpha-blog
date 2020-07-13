# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Disable rails adding fields_with_error div on form validation error
# fields_with_error div messes up the styling of the form
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end