FROM python:3.7.0

# Don't buffer stdin, stdout, stderr
ENV PYTHONBUFFERED 1

# Create a directory for the source code.
RUN mkdir -p /usr/src
WORKDIR /usr/src

# Install the dependencies before adding the rest of the code.
# This will help to eliminate the need to always install dependencies.
COPY requirements.txt /usr/src
RUN pip3 install -r requirements.txt

# Get the rest of the source code.
COPY src /usr/src
