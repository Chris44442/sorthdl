FROM ubuntu:24.04

# Install necessary packages
RUN apt-get -y update
RUN apt-get install -y curl gcc
RUN apt-get update

# Install Rust and Cargo
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Import files from repository
COPY . /home
WORKDIR /home

# Build the project
RUN cargo add serde
RUN cargo add serde_json
RUN cargo add clap
RUN cargo build --release

