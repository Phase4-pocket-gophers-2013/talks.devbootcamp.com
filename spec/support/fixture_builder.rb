FixtureBuilder.configure do |fbuilder|
  fbuilder.files_to_check += Dir["spec/factories/*.rb", "spec/support/fixture_builder.rb"]
end