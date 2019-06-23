# Errors are cool.
module HQTrivia::Errors
  # Raised if a 404 error is returned
  class InvalidUser < ArgumentError; end

  # Raised if a 401 error is returned
  class InvalidKey < ArgumentError; end
end
