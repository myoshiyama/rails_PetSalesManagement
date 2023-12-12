# Use the official Ruby image
FROM ruby:3.1

# Install dependencies (Node.js, Yarn)
RUN apt-get update -qq \
    && apt-get install -y gnupg \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor -o /usr/share/keyrings/yarn-archive-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn default-mysql-client

# Print installed Node.js version
RUN node -v

# Install npm
RUN apt-get install -y npm

# Print installed npm version
RUN npm -v

# Install Yarn
RUN npm install -g yarn

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

# Check if package.json exists before running npm install
# This prevents npm install from running if package.json is not present
RUN [ -e package.json ] && npm install

# Add a script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the main process
CMD ["rails", "server", "-b", "0.0.0.0"]