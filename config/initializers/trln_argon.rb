config_file = File.join(Rails.root, '/config/trln_argon.yml')

def apply_local_config(config, field)
  config[field] if config[field]
end

if File.exist?(config_file)

  local_config = YAML.safe_load(ERB.new(IO.read(config_file)).result(binding))[Rails.env]

  TrlnArgon::Engine.configure do |config|
    config.preferred_records             = apply_local_config(local_config, 'preferred_records')
    config.local_institution_code        = apply_local_config(local_config, 'local_institution_code')
    config.local_records                 = apply_local_config(local_config, 'local_records')
    config.apply_local_filter_by_default = apply_local_config(local_config, 'apply_local_filter_by_default')
    config.application_name              = apply_local_config(local_config, 'application_name')

    config.code_mappings = {
      git_url: 'https://github.com/trln/argon_code_mappings',
      git_branch: 'master'
    }
    git_fetcher = TrlnArgon::MappingsGitFetcher.new(git_url: config.code_mappings[:git_url])
    TrlnArgon::LookupManager.fetcher = git_fetcher

    TrlnArgon::LookupManager.instance.map('ncsu.library.DHHILL')
  end
end
