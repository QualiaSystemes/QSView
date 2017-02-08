Pod::Spec.new do |s|
  s.name             = 'QSView'
  s.version          = '0.0.2'
  s.summary          = 'Provide view / xib utilities'
  s.description      = <<-DESC
QSView provide view / xib utilities
@see README.md to have more details
                       DESC

  s.homepage         = 'https://github.com/QualiaSystemes/QSView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'QualiaSystemes' => 'technique@qualia.fr' }
  s.source           = { :git => 'https://github.com/QualiaSystemes/QSView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'QSView/Classes/**/*'

  s.frameworks = 'UIKit'
  s.module_name = 'QSView'
end
