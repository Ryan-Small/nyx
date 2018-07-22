FROM python:3.7.0

# Don't buffer stdin, stdout, stderr
ENV PYTHONBUFFERED 1

# Update and install dependencies.
#RUN apt-get update && apt-get install -y \
#RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Create a directory for the source code..
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install the dependencies before adding the rest of the code.
# This will help to eliminate the need to always install dependencies.
COPY requirements.txt /usr/src/app
RUN pip3 install -r requirements.txt

# Get the rest of the source code.
COPY . /usr/src/app
