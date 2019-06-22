# The User SeasonXP Class. A user's season.
class HQTrivia::User::SeasonXP
  # @param data [JSON] the data.
  # @!visibility private
  def initialize(data)
    @data = data[0]
  end

  # @return [Integer] the user's current points
  def current_points
    @data['currentPoints']
  end

  # @return [Integer] the points this user needs to level up
  def remaining_points
    @data['remainingPoints']
  end

  # @return [String] the name of this season
  def name
    @data['name']
  end

  # @return [true, false] if this season is active.
  def active?
    @data['active']
  end

  # General is HQ Trivia, Sports is HQ Sports, Words is HQ Words
  # @return [Array<String>] what game modes contribute towards the points
  def participating_gamemodes
    @data['verticals']
  end

  # @return [Integer] the current level this user is on.
  def current_level
    @data['currentLevel']['level']
  end

  # The range of the current level.
  # This is returned as a range.
  # Do current_level_range.min to find min
  # Do current_level_range.max to find max
  # @return [Range] the range of this level
  def current_level_range
    Range.new(@data['currentLevel']['minPoints'], @data['currentLevel']['maxPoints'])
  end

  # @return [Hash<String, String>] the display, as shown in the app.
  def display
    @data['display']
  end

  # @return [Integer] the amount of referrals
  def referrals
    @data['quotas']['currentReferrals']
  end

  # @return [Integer] the amount of shares to facebook
  def shares_to_facebook
    @data['quotas']['currentSharesToFacebook']
  end

  # @return [Integer] the amount of shares to Twitter
  def shares_to_twitter
    @data['quotas']['currentSharesToTwitter']
  end
end
