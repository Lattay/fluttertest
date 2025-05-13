FROM gitpod/workspace-full

# Install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter \
    && echo 'export PATH="$PATH:/home/gitpod/flutter/bin"' >> /home/gitpod/.bashrc

ENV PATH="/home/gitpod/flutter/bin:$PATH"

# Pre-download Flutter dependencies
RUN flutter doctor
