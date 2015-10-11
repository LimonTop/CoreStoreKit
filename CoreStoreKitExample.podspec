Pod::Spec.new do |s|

  s.name        = "CoreStoreKit"
  s.version     = "0.1"
  s.summary     = "CoreData management library written in Swift."

  s.description = <<-DESC
                   CoreStoreKit is a CoreData management library written in Swift. CoreStoreKit help you to use CoreData.
                   DESC

  s.homepage    = "https://github.com/LimonTop/CoreStoreKit"

  s.license     = { :type => "MIT", :file => "LICENSE" }

  s.authors           = { "Limon" => "fengninglong@gmail.com" }
  s.social_media_url  = "https://twitter.com/Limon______"

  s.ios.deployment_target   = "8.0"
  # s.osx.deployment_target = "10.7"

  s.source          = { :git => "https://github.com/LimonTop/CoreStoreKit.git", :tag => s.version }
  s.source_files    = "CoreStoreKit/*.swift"
  s.requires_arc    = true

end
