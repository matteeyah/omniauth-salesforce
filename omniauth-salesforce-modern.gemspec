require File.expand_path('lib/omniauth_salesforce/version', __dir__)

Gem::Specification.new do |gem|
  gem.authors       = ['Richard Vanhook']
  gem.email         = ['rvanhook@salesforce.com']
  gem.description   = 'OmniAuth strategy for salesforce.com.'
  gem.summary       = 'OmniAuth strategy for salesforce.com.'
  gem.homepage      = 'https://github.com/matteeyah/omniauth-salesforce'

  gem.files         = `git ls-files`.split("\n")
  gem.name          = 'omniauth-salesforce-modern'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Salesforce::VERSION
  gem.license       = 'MIT'

  gem.add_dependency 'omniauth', '~> 2.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.7.1'
  gem.required_ruby_version = '>= 2.1.0'
  gem.metadata['rubygems_mfa_required'] = 'true'
end
