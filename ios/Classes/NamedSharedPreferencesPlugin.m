#import "NamedSharedPreferencesPlugin.h"
#if __has_include(<named_shared_preferences/named_shared_preferences-Swift.h>)
#import <named_shared_preferences/named_shared_preferences-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "named_shared_preferences-Swift.h"
#endif

@implementation NamedSharedPreferencesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNamedSharedPreferencesPlugin registerWithRegistrar:registrar];
}
@end
