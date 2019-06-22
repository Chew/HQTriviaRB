# The User Class. A User. Your typical, everyday user.
class HQTrivia::User
  # Initialize a new user. Get all their stats. Relax.
  # @param id [Integer] the ID of the user.
  # @param key [String] an API key, to get info.
  def initialize(id, key)
    @key = key
    @data = JSON.parse(RestClient.get("https://api-quiz.hype.space/users/#{id}", Authorization: key))
  end

  # @return [Integer] their id
  def id
    @data['userId']
  end

  # @return [String] their username
  def username
    @data['username']
  end

  # A user always has an avatar, whether HQ provided or not.
  # @return [String] the user's Avatar URL.
  def avatar_url
    @data['avatarUrl']
  end

  # @return [Time] the creation date of this user
  def created
    Time.parse(@data['created'])
  end

  # This user's leaderboard, returned as a UserLeaderboard object
  # @return [UserLeaderboard] the user's leaderboard standings
  def leaderboard
    HQTrivia::UserLeaderboard.new(@data['leaderboard'])
  end

  # @return [Integer] the user's high score.
  def high_score
    @data['highScore']
  end

  # @return [Integer] the amount of games this user has played
  def games_played
    @data['gamesPlayed']
  end

  # @return [Integer] the amount of games this user has won
  def win_count
    @data['winCount']
  end

  # @see [User#badges]
  # @return [Integer] the amount of badges this person has
  def badges_count
    @data['achievementCount']
  end

  def badges
    HQTrivia::Badges.new(id, @key)
  end

  # @return [SeasonXP] the season XP stats of this user
  def season_xp
    HQTrivia::SeasonXP.new(@data['seasonXp'])
  end

  # @return [true, false] whether this person has been blocked by the authed user
  def blocked?
    @data['blocked']
  end

  # @return [true, false] whether this person is blocking the authed user
  def blocking?
    @data['blocksMe']
  end

  # If this is true, you should consider HQTrivia#me.
  # Otherwise, this is just a normal user.
  # @return [true, false] whether the user is actually the owner of the key
  def authed_user?
    return true unless @data['hasPhone'].nil?

    false
  end
end
