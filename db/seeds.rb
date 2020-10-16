account = Account.first
bugs = [
  {
    title: 'iOS app is broken',
    status: :open,
    platform: :ios,
    account_id: account.id
  },
  {
    title: "Can't log in to Android app",
    status: :in_progress,
    platform: :android,
    account_id: account.id
  },
  {
    title: 'Website takes way too long to load',
    status: :closed,
    platform: :web,
    account_id: account.id
  },
  {
    title: "Logo isn't showing up on home page",
    status: :in_progress,
    platform: :web,
    account_id: account.id
  },
  {
    title: 'Our company name is spelled wrong',
    status: :closed,
    platform: :android,
    account_id: account.id
  }
]

Bug.create(bugs)
