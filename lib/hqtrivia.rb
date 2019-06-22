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
  def user(id)
    User.new(id, @key)
  end

  # Get the authed user's profile
  def me
    Me.new(@key)
  end
end

# Require files.
require 'hqtrivia/user'
require 'hqtrivia/me'
