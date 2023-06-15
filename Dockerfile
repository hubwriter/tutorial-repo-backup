# Specify a container image to use to generate the new Docker container
FROM alpine:latest

# Copy your custom action shell script from this repository into the container
# COPY <RELATIVE PATH TO FILE BEING COPIED> <FULL PATH OF LOCATION ON THE CONTAINER>
COPY get-issue-details.sh /get-issue-details.sh

# Make the script file in the container executable
RUN chmod +x /get-issue-details.sh

# Specify what file to execute when the Docker container starts up
ENTRYPOINT ["/get-issue-details.sh"]