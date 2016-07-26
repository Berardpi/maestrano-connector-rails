# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: maestrano-connector-rails 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "maestrano-connector-rails"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pierre Berard"]
  s.date = "2016-07-26"
  s.description = "Maestrano is the next generation marketplace for SME applications. See https://maestrano.com for details."
  s.email = "pierre.berard@maestrano.com"
  s.executables = ["rails"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".rspec",
    ".rubocop.yml",
    ".rubocop_todo.yml",
    ".ruby-version",
    "CODESHIP.md",
    "DEVELOPER.md",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/maestrano/account/group_users_controller.rb",
    "app/controllers/maestrano/account/groups_controller.rb",
    "app/controllers/maestrano/application_controller.rb",
    "app/controllers/maestrano/auth/saml_controller.rb",
    "app/controllers/maestrano/connec_controller.rb",
    "app/controllers/maestrano/dependancies_controller.rb",
    "app/controllers/maestrano/sessions_controller.rb",
    "app/controllers/maestrano/synchronizations_controller.rb",
    "app/controllers/version_controller.rb",
    "app/helpers/maestrano/connector/rails/session_helper.rb",
    "app/jobs/maestrano/connector/rails/all_synchronizations_job.rb",
    "app/jobs/maestrano/connector/rails/push_to_connec_job.rb",
    "app/jobs/maestrano/connector/rails/push_to_connec_worker.rb",
    "app/jobs/maestrano/connector/rails/synchronization_job.rb",
    "app/models/maestrano/connector/rails/complex_entity.rb",
    "app/models/maestrano/connector/rails/concerns/complex_entity.rb",
    "app/models/maestrano/connector/rails/concerns/connec_helper.rb",
    "app/models/maestrano/connector/rails/concerns/connector_logger.rb",
    "app/models/maestrano/connector/rails/concerns/entity.rb",
    "app/models/maestrano/connector/rails/concerns/entity_base.rb",
    "app/models/maestrano/connector/rails/concerns/external.rb",
    "app/models/maestrano/connector/rails/concerns/sub_entity_base.rb",
    "app/models/maestrano/connector/rails/connec_helper.rb",
    "app/models/maestrano/connector/rails/connector_logger.rb",
    "app/models/maestrano/connector/rails/entity.rb",
    "app/models/maestrano/connector/rails/entity_base.rb",
    "app/models/maestrano/connector/rails/external.rb",
    "app/models/maestrano/connector/rails/id_map.rb",
    "app/models/maestrano/connector/rails/organization.rb",
    "app/models/maestrano/connector/rails/sub_entity_base.rb",
    "app/models/maestrano/connector/rails/synchronization.rb",
    "app/models/maestrano/connector/rails/user.rb",
    "app/models/maestrano/connector/rails/user_organization_rel.rb",
    "bin/rails",
    "config/routes.rb",
    "db/migrate/20151122162100_create_users.rb",
    "db/migrate/20151122162414_create_organizations.rb",
    "db/migrate/20151122162613_create_user_organization_rels.rb",
    "db/migrate/20151122163325_create_synchronizations.rb",
    "db/migrate/20151122163449_create_id_maps.rb",
    "db/migrate/20160205132857_add_sync_enabled_to_organizations.rb",
    "db/migrate/20160215103120_add_name_to_id_map.rb",
    "db/migrate/20160427112250_add_inactive_to_idmaps.rb",
    "db/migrate/20160614114401_add_date_filtering_limit_to_organization.rb",
    "db/migrate/20160614160654_add_encryption_on_oauth_keys.rb",
    "lib/generators/connector/USAGE",
    "lib/generators/connector/complex_entity_generator.rb",
    "lib/generators/connector/install_generator.rb",
    "lib/generators/connector/templates/complex_entity_example/contact.rb",
    "lib/generators/connector/templates/complex_entity_example/contact_and_lead.rb",
    "lib/generators/connector/templates/complex_entity_example/contact_mapper.rb",
    "lib/generators/connector/templates/complex_entity_example/lead.rb",
    "lib/generators/connector/templates/complex_entity_example/lead_mapper.rb",
    "lib/generators/connector/templates/complex_entity_example/person.rb",
    "lib/generators/connector/templates/entity.rb",
    "lib/generators/connector/templates/example_entity.rb",
    "lib/generators/connector/templates/example_entity_spec.rb",
    "lib/generators/connector/templates/external.rb",
    "lib/generators/connector/templates/home.js",
    "lib/generators/connector/templates/home_controller.rb",
    "lib/generators/connector/templates/home_controller_spec.rb",
    "lib/generators/connector/templates/home_index.haml",
    "lib/generators/connector/templates/layouts.haml",
    "lib/generators/connector/templates/oauth_controller.rb",
    "lib/generators/connector/templates/shared_entities_controller.rb",
    "lib/generators/connector/templates/shared_entities_controller_spec.rb",
    "lib/generators/connector/templates/shared_entities_index.haml",
    "lib/generators/connector/templates/stylesheets/application.sass",
    "lib/generators/connector/templates/stylesheets/home.sass",
    "lib/generators/connector/templates/stylesheets/layout.sass",
    "lib/generators/connector/templates/stylesheets/spacers.sass",
    "lib/generators/connector/templates/stylesheets/variables.sass",
    "lib/generators/connector/templates/synchronizations_controller.rb",
    "lib/generators/connector/templates/synchronizations_controller_spec.rb",
    "lib/generators/connector/templates/synchronizations_index.haml",
    "lib/maestrano/connector/rails.rb",
    "lib/maestrano_connector_rails.rb",
    "maestrano-connector-rails.gemspec",
    "maestrano.png",
    "release_notes.md",
    "spec/controllers/connec_controller_spec.rb",
    "spec/controllers/dependancies_controller_spec.rb",
    "spec/controllers/group_users_controller_spec.rb",
    "spec/controllers/groups_controller_spec.rb",
    "spec/controllers/synchronizations_controller_spec.rb",
    "spec/controllers/version_controller_spec.rb",
    "spec/dummy/README.md",
    "spec/dummy/Rakefile",
    "spec/dummy/app/assets/images/.keep",
    "spec/dummy/app/assets/javascripts/application.js",
    "spec/dummy/app/assets/stylesheets/application.css",
    "spec/dummy/app/controllers/admin_controller.rb",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/controllers/concerns/.keep",
    "spec/dummy/app/controllers/home_controller.rb",
    "spec/dummy/app/controllers/oauth_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/mailers/.keep",
    "spec/dummy/app/models/.keep",
    "spec/dummy/app/models/concerns/.keep",
    "spec/dummy/app/models/entities/.keep",
    "spec/dummy/app/views/home/index.html.erb",
    "spec/dummy/app/views/layouts/application.html.erb",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/bin/setup",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/assets.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/cookies_serializer.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/maestrano.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/routes.rb",
    "spec/dummy/config/secrets.yml",
    "spec/dummy/config/settings.yml",
    "spec/dummy/config/settings/development.yml",
    "spec/dummy/config/settings/production.yml",
    "spec/dummy/config/settings/test.yml",
    "spec/dummy/config/settings/uat.yml",
    "spec/dummy/db/schema.rb",
    "spec/dummy/lib/assets/.keep",
    "spec/dummy/log/.keep",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/tmp/cache/.keep",
    "spec/factories.rb",
    "spec/integration/complex_id_references_spec.rb",
    "spec/integration/complex_naming_spec.rb",
    "spec/integration/complex_spec.rb",
    "spec/integration/connec_to_external_spec.rb",
    "spec/integration/external_to_connec_spec.rb",
    "spec/integration/id_references_spec.rb",
    "spec/integration/singleton_spec.rb",
    "spec/jobs/all_synchronizations_job_spec.rb",
    "spec/jobs/push_to_connec_job_spec.rb",
    "spec/jobs/push_to_connec_worker_spec.rb",
    "spec/jobs/synchronization_job_spec.rb",
    "spec/models/complex_entity_spec.rb",
    "spec/models/connec_helper_spec.rb",
    "spec/models/connector_logger_spec.rb",
    "spec/models/entity_base_spec.rb",
    "spec/models/entity_spec.rb",
    "spec/models/external_spec.rb",
    "spec/models/id_map_spec.rb",
    "spec/models/organization_spec.rb",
    "spec/models/sub_entity_base_spec.rb",
    "spec/models/synchronization_spec.rb",
    "spec/models/user_organization_rel_spec.rb",
    "spec/models/user_spec.rb",
    "spec/routing/connec_routing_spec.rb",
    "spec/spec_helper.rb",
    "template/Procfile",
    "template/application.yml.sample",
    "template/database.yml",
    "template/factories.rb",
    "template/gitignore",
    "template/maestrano-connector-template.rb",
    "template/maestrano.rb",
    "template/routes.rb",
    "template/settings/development.yml",
    "template/settings/production.yml",
    "template/settings/settings.yml",
    "template/settings/test.yml",
    "template/settings/uat.yml",
    "template/sidekiq.rb",
    "template/sidekiq.yml",
    "template/spec_helper.rb"
  ]
  s.homepage = "http://github.com/maestrano/maestrano-connector-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Rails framework to build connector with Maestrano"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.2"])
      s.add_runtime_dependency(%q<maestrano-rails>, [">= 0"])
      s.add_runtime_dependency(%q<hash_mapper>, [">= 0"])
      s.add_runtime_dependency(%q<haml-rails>, [">= 0"])
      s.add_runtime_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_runtime_dependency(%q<autoprefixer-rails>, [">= 0"])
      s.add_runtime_dependency(%q<attr_encrypted>, ["~> 1.4.0"])
      s.add_runtime_dependency(%q<config>, [">= 0"])
      s.add_runtime_dependency(%q<figaro>, [">= 0"])
      s.add_runtime_dependency(%q<sidekiq>, [">= 0"])
      s.add_runtime_dependency(%q<sidekiq-unique-jobs>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<sidekiq-cron>, [">= 0"])
      s.add_runtime_dependency(%q<slim>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.1.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 4.2"])
      s.add_dependency(%q<maestrano-rails>, [">= 0"])
      s.add_dependency(%q<hash_mapper>, [">= 0"])
      s.add_dependency(%q<haml-rails>, [">= 0"])
      s.add_dependency(%q<bootstrap-sass>, [">= 0"])
      s.add_dependency(%q<autoprefixer-rails>, [">= 0"])
      s.add_dependency(%q<attr_encrypted>, ["~> 1.4.0"])
      s.add_dependency(%q<config>, [">= 0"])
      s.add_dependency(%q<figaro>, [">= 0"])
      s.add_dependency(%q<sidekiq>, [">= 0"])
      s.add_dependency(%q<sidekiq-unique-jobs>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<sidekiq-cron>, [">= 0"])
      s.add_dependency(%q<slim>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.1.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
      s.add_dependency(%q<timecop>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.2"])
    s.add_dependency(%q<maestrano-rails>, [">= 0"])
    s.add_dependency(%q<hash_mapper>, [">= 0"])
    s.add_dependency(%q<haml-rails>, [">= 0"])
    s.add_dependency(%q<bootstrap-sass>, [">= 0"])
    s.add_dependency(%q<autoprefixer-rails>, [">= 0"])
    s.add_dependency(%q<attr_encrypted>, ["~> 1.4.0"])
    s.add_dependency(%q<config>, [">= 0"])
    s.add_dependency(%q<figaro>, [">= 0"])
    s.add_dependency(%q<sidekiq>, [">= 0"])
    s.add_dependency(%q<sidekiq-unique-jobs>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<sidekiq-cron>, [">= 0"])
    s.add_dependency(%q<slim>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.1.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
    s.add_dependency(%q<timecop>, [">= 0"])
  end
end

