# The Badges Class. A User, but their badges.
class HQTrivia::Badges
  # Initialize a new user. Get all their stats. Relax.
  # @param id [Integer] the ID of the user.
  # @param key [String] an API key, to get info.
  def initialize(id, key)
    @data = JSON.parse(RestClient.get("https://api-quiz.hype.space/achievements/v2/#{id}", Authorization: key))
  rescue RestClient::NotFound
    raise HQTrivia::Errors::InvalidUser, "This user doesn't exist!"
  rescue RestClient::Unauthorized
    raise HQTrivia::Errors::InvalidKey, "This API Key is invalid!"
  end

  # @see [User#badges_count]
  # @return [Integer] the amount of badges this person has
  def badges_count
    @data['earnedAchievementCount']
  end

  # @return [Integer] the amount of achievement types
  def types
    @data['families'].count
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def business(level = 3)
    data = @data['families'].find { |type| type['name'] == 'Business' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def entertainment(level)
    data = @data['families'].find { |type| type['name'] == 'Entertainment' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def geography(level)
    data = @data['families'].find { |type| type['name'] == 'Geography' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def history(level)
    data = @data['families'].find { |type| type['name'] == 'History' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def literature(level)
    data = @data['families'].find { |type| type['name'] == 'Literature' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def movies(level)
    data = @data['families'].find { |type| type['name'] == 'Movies' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def music(level)
    data = @data['families'].find { |type| type['name'] == 'Music' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def nature(level)
    data = @data['families'].find { |type| type['name'] == 'Nature' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def science(level)
    data = @data['families'].find { |type| type['name'] == 'Science' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def sports(level)
    data = @data['families'].find { |type| type['name'] == 'Sports' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end

  # Get badge info for a specific level.
  # @return [Badge] badge info for this badge
  def tv(level)
    data = @data['families'].find { |type| type['name'] == 'TV' }
    badge = data['earnedAchievements'].find { |le| le['familyOrder'] == (level - 1) }
    HQTrivia::Badge.new(badge)
  end
end
