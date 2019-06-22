# The user themselves
class HQTrivia::Me < HQTrivia::User
  # Get that user info!
  # @param key [String] the key of the user
  def initialize(key)
    @key = key
    @data = JSON.parse(RestClient.get('https://api-quiz.hype.space/users/me', Authorization: key, 'x-hq-client': 'iOS/1.4.15 b146'))
  end

  # @return [Array<String>] an array of this user's device tokens.
  def device_tokens
    @data['deviceTokens']
  end

  # This is most likely always true, you need one to sign up!
  # @return [true, false] if this user has a phone number.
  def phone?
    @data['hasPhone']
  end

  # @return [String] your phone number
  def phone_number
    @data['phoneNumber']
  end

  # @return [Integer] how many lives you have
  def lives
    @data['lives']
  end

  # @return [true, false] if you have been referred by someone
  def referred?
    @data['referred']
  end

  # @return [Integer] the user id of the person who referred you.
  def referring_user_id
    @data['referringUserId']
  end

  # Your HQ Preferences
  # @return [Hash<String, Boolean>] your preferences
  def preferences
    @data['preferences']
  end

  # @return [Array<Integer>] all of your friends. All. Of. Them. Max 50.
  def friend_ids
    @data['friendIds']
  end

  # Base64 for a number between 1-4, this dicates the country you're from.
  # This doesn't matter anymore, everyone is forced to be American.
  def stk
    @data['stk']
  end

  # @return [StreakInfo] your streak info!
  def streak_info
    StreakInfo.new(@data['streakInfo'])
  end

  # @return [Integer] how many erasers you have
  def erasers
    @data['erase1s']
  end

  # Your point multipliers. 2x, 3x, 4x.
  # @return [Hash<Integer, Integer>] your multipliers.
  def point_multiplier_count
    @data['pointsMultiplierCounts']
  end
end
