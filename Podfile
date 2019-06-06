platform :ios, '12.0'

#Common
use_frameworks!
pod '...'

# Application
target 'Target' do
    pod 'Alamofire'
    pod 'ObjectMapper'

    pod 'NVActivityIndicatorView'
    pod 'Drop'
    pod 'SwiftKeychainWrapper'
    pod 'SKTextInputsManager'

    pod 'SwiftLint'
    pod 'SwiftGen'
end
 
# Tests or extension or...
target 'AnotherTarger' do
end

# Set 'Build active architecture only' to NO for all pods
post_install do |installer_representation|
  installer_representation.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
    end
  end
end