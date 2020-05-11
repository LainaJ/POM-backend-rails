# added datadog monitoring 

Datadog.configure do |c|
  c.use :rails, service_name: 'my-rails-app'
end

Datadog.configure { |c| c.analytics_enabled = true }