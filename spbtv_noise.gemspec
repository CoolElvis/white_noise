# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noise/version'

Gem::Specification.new do |spec|
  spec.name          = 'spbtv_noise'
  spec.version       = Noise::VERSION
  spec.authors       = ['Tema Bolshakov']
  spec.email         = ['abolshakov@spbtv.com']
  spec.license       = 'SPB TV Proprietary'
  spec.summary       = 'Defines middleware which renders exceptions and notifies Bugsnag.'
  spec.homepage      = 'http://stash.mwm.local/projects/SS/repos/spbtv-statics'

  spec.metadata['allowed_push_host'] = 'http://lrepos.spbtv.com:8081/nexus/content/repositories/private-rubygems/'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'i18n', '~> 0.7.0'
  spec.add_runtime_dependency 'activesupport', '~> 4.0'
  spec.add_runtime_dependency 'actionpack', '~> 4.0'
  spec.add_runtime_dependency 'spbtv_active_model_serializers', '0.10.0.rc2'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'spbtv_code_style', '~> 1.1'
  spec.add_development_dependency 'bugsnag', '~> 2.8'
  spec.add_development_dependency 'addressable', '~> 2.3'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.2.3'
end
