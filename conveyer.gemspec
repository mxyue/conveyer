# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conveyer/version'

Gem::Specification.new do |spec|
  spec.name          = "conveyer"
  spec.version       = Conveyer::VERSION
  spec.authors       = ["肖玉萃"]
  spec.email         = ["basicbox@126.com"]

  spec.summary       = %q{调用jpegtran压缩命令}
  spec.description   = %q{调用jpegtran压缩命令，压缩当前所有jpg文件，并存放到新建的文件夹内}
  spec.homepage      = "http://mxyue.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  spec.executables   = ["conveyer"]  #spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
