# frozen_string_literal: true

Given('a user is on the {string} page') do |path|
  visit("/#{path}")
  sleep 10
end

When('a user click on {string} instrument') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('crypto.com return the trade pafe of {string}') do |_string|
  pending # Write code here that turns the phrase above into concrete actions
end
