RSpec.configure do |config|
  config.color = true

  # Use the specified formatter
  config.formatter = :documentation
  config.add_formatter 'Fuubar'
end
