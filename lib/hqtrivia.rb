# Require external gems
require 'json'
require 'rest-client'

# All HQTrivia functionality, whether extended or just here.
class HQTrivia
  # Initialize a new HQTrivia Object, via a key.
  # @param key [String] your API Key.
  def initialize(key)
    @key = key
  end

  # Get the key back. In case you left it at the door.
  attr_reader :key

  # Get a user by ID
  # @return [User] the new user
  def user(id)
    User.new(id, @key)
  end

  # Get the authed user's profile
  # @return [Me] the you
  def me
    Me.new(@key)
  end

  # Get a user's badges (by user ID)
  # @return [Badges] the badges
  def badges(id)
    Badges.new(id, @key)
  end

  # @return [Schedule] the show schedule
  def schedule
    Schedule.new(@key)
  end
end

# Require files.
require 'hqtrivia/badge'
require 'hqtrivia/badges'
require 'hqtrivia/user'
require 'hqtrivia/user/leaderboard'
require 'hqtrivia/user/streakinfo'
require 'hqtrivia/user/seasonxp'
require 'hqtrivia/me'
require 'hqtrivia/schedule'
require 'hqtrivia/schedule/announcement'
require 'hqtrivia/schedule/show'
