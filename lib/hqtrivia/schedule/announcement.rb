# The Schedule Announcement Class. This is an announcement above the schedule
class HQTrivia::Schedule::Announcement
  # @param data [JSON] the data.
  # @!visibility private
  def initialize(data)
    @data = data
  end

  # @return [String] the display name of this announcement
  def display_name
    @data['displayName']
  end

  # @return [String] the accent color
  def accent_color
    @data['accentColor']
  end

  # @return [String] the background color
  def background_color
    @data['backgroundColor']
  end

  # @return [String] the background image
  def background_image
    @data['backgroundImage']
  end

  # @return [String] the background video
  def background_video
    @data['backgroundVideo']
  end

  # @return [String] the color of the text
  def text_color
    @data['textColor']
  end

  # Basically the summary
  # @return [String] how it works
  def how_it_works
    @data['howItWorks']
  end

  # Basically the description
  # @return [String] fine print
  def fine_print
    @data['finePrint']
  end

  # @return [Integer] the prize (in cents)
  def prize_cents
    @data['prizeCents']
  end

  # @return [String] the prize currency
  def prize_currency
    @data['prizeCurrency']
  end

  # @return [String] the name of this announcement
  def name
    @data['name']
  end

  # @return [Time] the time of this announcement (countdowns to this)
  def time
    Time.parse(@data['time'])
  end

  # @return [true, false] if this announcement is active
  def active?
    @data['active']
  end

  # @return [String] the state of this announcement
  def state
    @data['state']
  end
end
