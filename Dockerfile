FROM ruby:2.3-alpine

RUN mkdir /app
WORKDIR /app
ADD . /app
RUN bundle install  --jobs 20 --retry 5
RUN chmod +x web.rb

ENV RACK_ENV production
ENV BOGUS_NAME stanger

EXPOSE 8080

CMD /app/web.rb -o 0.0.0.0 -p 8080
