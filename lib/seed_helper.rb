require 'active_record/fixtures'

module SeedHelper
  def import_fixture(name)
    puts "Import #{name}..."
    ActiveRecord::Fixtures.create_fixtures(
      "#{Rails.root}/db/fixtures",
      name
    )
  end
end
