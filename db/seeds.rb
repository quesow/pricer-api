  PANEL_PROVIDERS_CODES = %w[times_a 10_arrays times_html].freeze

  COUNTRIES = [
    { code: "PL", panel_provider_code: "times_a" },
    { code: "US", panel_provider_code: "10_arrays" },
    { code: "UK", panel_provider_code: "times_html" }
  ].freeze

  LOCATIONS = [
    { name: "New York" },
    { name: "Los Angeles" },
    { name: "Chicago" },
    { name: "Houston" },
    { name: "Philadelphia" },
    { name: "Phoenix" },
    { name: "San Antonio" },
    { name: "San Diego" },
    { name: "Dallas" },
    { name: "San Jose" },
    { name: "Austin" },
    { name: "Jacksonville" },
    { name: "San Francisco" },
    { name: "Indianapolis" },
    { name: "Columbus" },
    { name: "Fort Worth" },
    { name: "Charlotte" },
    { name: "Detroit" },
    { name: "El Paso" },
    { name: "Seattle" }
  ].freeze

  # 4 root Target Groups and each root should start a tree which is minimium 3 levels deep (3 of them with different provider and 1 would belong to any of them)
  TARGET_GROUPS = [
    TargetGroup.create!(
      name: 'snow white',
      child_attributes: {
        name: 'charming',
        child_attributes: {
          name: 'evil queen'
        }
      }
    ),
    TargetGroup.create!(
      name: 'cinderella',
      child_attributes: {
        name: 'fairy godmother',
        child_attributes: {
          name: 'gusgus'
        }
      }
    ),
    TargetGroup.create!(
      name: 'pocahontas',
      child_attributes: {
        name: 'jonh smith',
        child_attributes: {
          name: 'grandmother willow'
        }
      }
    ),
    TargetGroup.create!(
      name: 'mulan',
      child_attributes: {
        name: 'mushu',
        child_attributes: {
          name: 'lucky cricket'
        }
      }
    )
  ]

  COUNTRIES.each do |country|
    Country.create!(
      country_code: country.fetch(:code)
    )
  end

  # PANEL_PROVIDERS_CODES.each { |panel_provider_code| PanelProvider.create!(code: panel_provider_code) }
  PanelProvider.create!(
    code: PANEL_PROVIDERS_CODES[0],
    country_id: Country.first.id,
    target_group_id: TargetGroup.first.id
  )
  PanelProvider.create!(
    code: PANEL_PROVIDERS_CODES[1],
    country_id: Country.all[1].id,
    target_group_id: TargetGroup.all[1].id
  )
  PanelProvider.create!(
    code: PANEL_PROVIDERS_CODES[2],
    country_id: Country.all[2].id,
    target_group_id: TargetGroup.all[2].id
  )

  LOCATIONS.each do |location|
    Location.create!(
      name: location.fetch(:name),
      external_id: SecureRandom.uuid,
      secret_code: SecureRandom.hex(64)
    )

  LocationGroup.create!(name: 'LG1',
                        panel_provider: PanelProvider.first,
                        country: Country.first)
  LocationGroup.create!(name: 'LG2',
                        panel_provider: PanelProvider.all[1],
                        country: Country.all[1])
  LocationGroup.create!(name: 'LG3',
                        panel_provider: PanelProvider.all[2],
                        country: Country.all[2])
  LocationGroup.create!(name: 'LG4',
                        panel_provider: PanelProvider.all[1],
                        country: Country.all[3])

  LocationGroupLocation.create(location: Location.all[0], location_group: LocationGroup.all[0])
  LocationGroupLocation.create(location: Location.all[1], location_group: LocationGroup.all[0])
  LocationGroupLocation.create(location: Location.all[1], location_group: LocationGroup.all[1])
  LocationGroupLocation.create(location: Location.all[2], location_group: LocationGroup.all[2])
end
