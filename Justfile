# Start the Jekyll server
up:
    docker compose up

# Start in detached mode
up-d:
    docker compose up -d

# Stop the Jekyll server
down:
    docker compose down

# Build the Docker image
build:
    docker compose build

# Build and start the Jekyll server (rebuild if necessary)
rebuild:
    docker compose up --build

# Clean volumes and rebuild
clean:
    docker compose down --volumes
    docker compose up --build

# Full reset - destroys all related images and rebuilds from scratch
reset:
    docker compose down --volumes --rmi all
    docker compose build --no-cache
    docker compose up

# Show container logs
logs:
    docker compose logs -f
