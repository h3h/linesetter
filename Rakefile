require 'rake'
require 'rubygems'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "linesetter"
    gem.summary = %Q{A paragraph (re)formatter for text editing.}
    gem.description = %Q{Reformats a given paragraph to fit on
    78-character-wide lines, retaining the left indent in spaces.}
    gem.email = "bfults@gmail.com"
    gem.homepage = "http://github.com/h3h/linesetter"
    gem.authors = ["Brad Fults"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  $stderr.puts "Install jeweler if you want fancier rake tasks. Don't if not."
end

begin
  require 'spec/rake/spectask'
  Spec::Rake::SpecTask.new(:spec) do |spec|
    spec.libs << 'lib' << 'spec'
    spec.spec_files = FileList['spec/**/*_spec.rb']
  end

  Spec::Rake::SpecTask.new(:rcov) do |spec|
    spec.libs << 'lib' << 'spec'
    spec.pattern = 'spec/**/*_spec.rb'
    spec.rcov = true
  end

  task :spec => :check_dependencies
  task :default => :spec
rescue LoadError
  $stderr.puts "RSpec required to run tests."
end

begin
  require 'rake/rdoctask'
  Rake::RDocTask.new do |rdoc|
    version = File.exist?('VERSION') ? File.read('VERSION') : ""

    rdoc.rdoc_dir = 'rdoc'
    rdoc.title = "linesetter #{version}"
    rdoc.rdoc_files.include('README*')
    rdoc.rdoc_files.include('lib/**/*.rb')
  end
rescue LoadError
  $stderr.puts "Rake::RDocTask required to build RDocs."
end
