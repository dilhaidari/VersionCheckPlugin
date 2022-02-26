#import "VersionCheckPlugin.h"
#if __has_include(<version_check_plugin/version_check_plugin-Swift.h>)
#import <version_check_plugin/version_check_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "version_check_plugin-Swift.h"
#endif

@implementation VersionCheckPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVersionCheckPlugin registerWithRegistrar:registrar];
}
@end
