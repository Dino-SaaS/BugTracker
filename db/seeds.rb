bugs = [
  {
    title: 'iOS app is broken',
    status: :open,
    platform: :ios
  },
  {
    title: "Can't log in to Android app",
    status: :in_progress,
    platform: :android
  },
  {
    title: 'Website takes way too long to load',
    status: :closed,
    platform: :web
  },
  {
    title: "Logo isn't showing up on home page",
    status: :in_progress,
    platform: :web
  },
  {
    title: 'Our company name is spelled wrong',
    status: :closed,
    platform: :android
  }
]

Bug.create(bugs)
