FROM ruby:3.2-slim

# Add Jekyll dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /site

# First install specific version of jekyll-sass-converter to avoid conflicts
RUN gem install jekyll-sass-converter -v 2.2.0

# Then install Jekyll and Bundler
RUN gem install jekyll bundler

# Copy Gemfile and Gemfile.lock if they exist
COPY Gemfile* ./

# Install gems if Gemfile exists
RUN if [ -f Gemfile ]; then bundle install; fi

# Expose port 4000, the default Jekyll port
EXPOSE 4000

# Start Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
