FROM node:18.14-bullseye-slim

# Configure working directory
WORKDIR /app

# Copy the rest of the application files
COPY . .

ARG GITLAB_AUTH_TOKEN
ENV GITLAB_AUTH_TOKEN $GITLAB_AUTH_TOKEN

# Install only production dependencies
RUN yarn install --frozen-lockfile

# Build the application
RUN yarn build

# Set the environment to production
ENV NODE_ENV=production

# Start the application
CMD ["yarn", "start"]
