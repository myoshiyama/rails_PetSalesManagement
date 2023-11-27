# Use the official Ruby image
FROM ruby:3.1

# Install dependencies (Node.js)
RUN apt-get update -qq && \
    apt-get install -y nodejs default-mysql-client

# Create and set the working directory
WORKDIR /myapp

# Copy the Gemfile and Gemfile.lock into the image
COPY Gemfile Gemfile.lock /myapp/

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle update --bundler

# Install gems
RUN bundle install

# Copy the application code into the image
COPY . /myapp/

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the main process
CMD ["rails", "server", "-b", "0.0.0.0"]