FROM ruby:2.6.0

RUN apt update
RUN apt -y install nodejs

WORKDIR ruby_exercise

COPY rails-example-project .

RUN bundle install
RUN rake assets:precompile

RUN rails db:migrate

CMD [ "rails", "s" ]