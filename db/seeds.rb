user = User.create(
  name: 'Test Tester',
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
)

bugs = [
  {
    title: 'iOS app is broken',
    status: :open,
    platform: :ios,
    user_id: user.id
  },
  {
    title: "Can't log in to Android app",
    status: :in_progress,
    platform: :android,
    user_id: user.id
  },
  {
    title: 'Website takes way too long to load',
    status: :closed,
    platform: :web,
    user_id: user.id
  },
  {
    title: "Logo isn't showing up on home page",
    status: :in_progress,
    platform: :web,
    user_id: user.id
  },
  {
    title: 'Our company name is spelled wrong',
    status: :closed,
    platform: :android,
    user_id: user.id
  }
]

Bug.create(bugs)
