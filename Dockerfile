# Pull PHP Container
FROM tutum/apache-php

# Set Info
MAINTAINER jluna <jl@jl.com>

# Install Updates
RUN apt-get update

# Update /run.sh
RUN mv /run.sh /run.sh.old
ADD run.sh /run.sh
RUN chmod 755 /*.sh

# Finalize
EXPOSE 80
WORKDIR /app
CMD ["/run.sh"]