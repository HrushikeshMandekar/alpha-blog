# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# To get rid of field error setting, this error was distrubing our layout
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
end
# do not try to understand above code