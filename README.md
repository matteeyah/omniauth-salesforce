# OmniAuth Salesforce Strategy

Strategy to authenticate with Gong via OAuth2 in OmniAuth.

Salesforce OAuth docs - <https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_oauth_and_connected_apps.htm>

Note: This is a fork of an [abandoned fork](https://github.com/realdoug/omniauth-salesforce) of the [original](https://github.com/richardvanhook/omniauth-salesforce) project.

## Installation

Add to your Gemfile:

```ruby
gem 'omniauth-salesforce'
```

Then `bundle install`.

## Salesforce API Setup

1. Follow the instructions in
   <https://help.gong.io/hc/en-us/articles/360056677792-Create-an-app-for-Gong>
   to create a "Connected app"

## Usage

Here's an example for adding the middleware to a Rails app in `config/initializers/salesforce.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce,
    Rails.application.credentials.dig(:salesforce, :key),
    Rails.application.credentials.dig(:salesforce, :secret)
end
```

You can now access the OmniAuth Salesforce URL: /auth/salesforce

NOTE: While developing your application, if you change the scope in the initializer you will need to restart your app server.

## Configuration

You can configure several options, which you pass in to the provider method via a hash:

- `client_options`: A hash of options to pass to the OAuth client

Here's an example of a possible configuration

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :salesforce,
    Rails.application.credentials.dig(:gong, :key),
    Rails.application.credentials.dig(:gong, :secret),
    client_options: {
      auth_scheme: :request_body
    }
end
```

## License

See [LICENSE](LICENSE.md)
