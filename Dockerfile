# Base image with Bun pre-installed
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy Bun lockfile and package.json
COPY package.json ./

# Install dependencies using Bun
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Start the Next.js development server
CMD ["bun", "run", "dev","--turbo"]