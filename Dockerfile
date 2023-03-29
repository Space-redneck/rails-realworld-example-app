From alpinelab/ruby-dev:2.7.5
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN useradd -ms /bin/bash rubyapp
WORKDIR /workspace
RUN chown rubyapp /workspace -R
COPY --chown=rubyapp rails-realworld-example-app /workspace
#USER root
RUN gem install bundler:2.0.0.pre.3
RUN bundle _2.0.0.pre.3_ update && bundle _2.0.0.pre.3_ install
