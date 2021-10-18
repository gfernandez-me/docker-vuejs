# Build Stage 3
FROM node:16.4.2

# Install system dependencies
RUN apt-get update && apt-get install -y \
    apt-utils \
    rsync \
    git \
    curl \
    zip \
    unzip 

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*