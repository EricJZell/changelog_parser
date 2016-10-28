require 'pry'
require 'json'
changelog_hash = {}
Dir.foreach('.changelog_entries') do |json_file|
  next if json_file == '.' or json_file == '..'
  entry = File.read(".changelog_entries/#{json_file}")
  entry_hash = JSON.parse(entry)
  version = entry_hash["version"]
  type = entry_hash["type"]
  description = entry_hash["description"]
  ticket = entry_hash["ticket"]
  changelog_hash[version] = {} unless changelog_hash[version]
  changelog_hash[version][type] = [] unless changelog_hash[version][type]
  changelog_hash[version][type] << "- [#{ticket}] #{description}\n"
end
versions = changelog_hash.keys.sort_by{|v| Gem::Version.new(v)}.reverse
changelog = "# Change Log\n"
versions.each do |version|
  change_types = changelog_hash[version]
  changelog << "\n## [#{version}]\n"
  change_types.sort.each do |type, changes|
    changelog << "### #{type}\n"
    changes.sort.each do |change|
      changelog << change
    end
  end
end
File.write('REVERSE_GENERATED_CHANGELOG.md', changelog)
