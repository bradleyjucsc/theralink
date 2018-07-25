# Thera

Thera is a thera-link client.
Manage users, appointments, payments and more.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'thera'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thera

## Usage
```ruby
client = Thera::Client.new('token')
client.appointment.all()
client.appointment.create(start: Time.now, end: Time.now, title: 'title')

client.appointment_request.create(start: Time.now, end: Time.now, title: 'title', approver_id: 1)

client.user.create(email: 'cersei@lannister.com', role: 'client')
client.user.lookup('cersei@lannister.com')

client.payment.create(payment_amount: 500, payer_id: 1)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bradleyjucsc/thera.
