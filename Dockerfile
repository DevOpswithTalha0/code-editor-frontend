# Base image with Bun pre-installed
FROM oven/bun:1.0.25

# Set the working directory inside the container
WORKDIR /app

# Copy Bun lockfile and package.json
COPY bun.lockb package.json ./

# Install dependencies using Bun
RUN bun install

# Copy the rest of the application code
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Start the Next.js development server
CMD ["bun", "run", "dev"]