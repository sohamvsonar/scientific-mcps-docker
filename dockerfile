FROM ubuntu:22.04

# Install core dependencies
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    git \
    python3 \
    python3-pip \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js v22 (LTS) using NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt-get install -y nodejs && \
    node -v && npm -v

# Install uv for Python package management
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.cargo/bin:${PATH}"

# Install Gemini CLI
RUN npm install -g @google/gemini-cli

# Clone scientific-mcps repo
WORKDIR /root
RUN git clone https://github.com/iowarp/scientific-mcps.git

# Set up the MCP with uv
WORKDIR /root/scientific-mcps/Adios

# Copy Gemini settings
COPY settings.json /root/.gemini/settings.json

# Default working directory
WORKDIR /root/scientific-mcps

CMD [ "bash" ]