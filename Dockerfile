FROM kalilinux/kali-rolling

# Install required tools and dependencies
RUN apt-get update && \
    apt-get install -y openvpn tmux python3 pip\ 
    && apt-get clean

# Set the working directory
WORKDIR /app

# Copy your Python files into the container
COPY Rooms/ /app/