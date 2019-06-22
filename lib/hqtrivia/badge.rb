# The Badge Class. A very specific badge.
class HQTrivia::Badge
  # @!visibility private
  def initialize(data)
    @data = data
  end

  # @return [Integer] the ID of this badge
  def id
    @data['achievementId']
  end

  # @return [String] the name of this badge (shown in the app)
  def name
    @data['name']
  end

  # @return [String] the description of this badge (shown in the app)
  def description
    @data['description']
  end

  # @return [String] the family of this badge
  def family
    @data['family']
  end

  # @return [Integer] the level of this badge
  def level
    @data['familyOrder'] + 1
  end

  # @return [String] the image for this badge
  def image_url
    @data['imageUrl']
  end

  # @return [Float] the progress towards the next level. 100 if achieved.
  def progress
    @data['progressPct']
  end

  # @return [true, false] the completion of this
  def completed?
    @data['completed']
  end

  # @return [Time] the time this progress was last updated
  def last_updated
    Time.at(@data['lastUpdated'] / 1000)
  end

  # @return [Time] the time this progress was last updated
  def last_updated
    Time.at(@data['lastUpdated'] / 1000)
  end

  # HQ API Returns 1/1/1970 if completed? is false. We'll return nil.
  # @return [Time, nil] the time this was achieved
  def earned
    return nil unless completed?

    Time.parse(@data['earnedAt'])
  end
end
