task :default => :tdoc
desc "Run tests witn --format documentation"
task :tdoc do
sh "rspec -Ilib spec/ppt_spec.rb --format documentation"
end

desc "Run test with format html"
task :thtml do
  sh "rspec -I. spec/ppt_spec.rb --format html > index html"
end
