# frozen_string_literal: true

STARTER_URNS = [
  'urn:changeorg:starter:6757e68c-8ac4-11eb-8dcd-0242ac130003',
  'urn:changeorg:starter:f5ae944c-8cd8-11eb-8dcd-0242ac130003',
  'urn:changeorg:starter:c6e83ee8-151b-4ac0-8e4a-b0dcc11a7f0d',
  'urn:changeorg:starter:ad922736-8cd9-11eb-8dcd-0242ac130003',
  'urn:changeorg:starter:b1da6920-8cd9-11eb-8dcd-0242ac130003',
  'urn:changeorg:starter:b5f3eebe-8cd9-11eb-8dcd-0242ac130003'
].freeze

Petition.delete_all
Petition.create(
  [
    {
      starter_urn: STARTER_URNS[0],
      title: 'Save our oceans',
      body: 'Lorem ipsum...', created_at: Time.new(2020, 12, 24)
    },
    {
      starter_urn: STARTER_URNS[1],
      title: 'Sign for climate change',
      body: 'Lorem ipsum...', created_at: Time.now - 2.day
    },
    {
      starter_urn: STARTER_URNS[2],
      title: 'Fight for justice',
      body: 'Lorem ipsum...', created_at: Time.now - 1.day
    },
    {
      starter_urn: STARTER_URNS[0],
      title: 'Ban the Cruel Sale & Trade of Shark Fins',
      body: 'Lorem ipsum...',
      created_at: Time.new(2020, 0o6, 0o1)
    },
    {
      starter_urn: STARTER_URNS[3],
      title: 'Seatbelts for Canadian School Buses, Now!',
      body: 'Lorem ipsum...',
      created_at: Time.now - 3.day
    },
    {
      starter_urn: STARTER_URNS[2],
      title: 'COVID-19 funding for Indigenous communities',
      body: 'Lorem ipsum...',
      created_at: Time.now - 4.day
    },
    {
      starter_urn: STARTER_URNS[4],
      title: 'Safer Personal Protective Equipment (PPE) for NHS workers',
      body: 'Lorem ipsum...',
      created_at: Time.now - 5.day
    },
    {
      starter_urn: STARTER_URNS[5],
      title: 'Cancer patients exempted from travel restrictions',
      body: 'Lorem ipsum...',
      created_at: Time.now - 6.day
    }
  ]
)

Follow.delete_all
Follow.create(
  [
    { user_id: 12, starter_urn: STARTER_URNS[0] },
    { user_id: 23, starter_urn: STARTER_URNS[0] },
    { user_id: 23, starter_urn: STARTER_URNS[1] }
  ]
)

puts 'Seeded', petitions: Petition.count, follows: Follow.count
