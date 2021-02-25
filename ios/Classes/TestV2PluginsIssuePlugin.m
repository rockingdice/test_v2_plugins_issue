#import "TestV2PluginsIssuePlugin.h"
#if __has_include(<test_v2_plugins_issue/test_v2_plugins_issue-Swift.h>)
#import <test_v2_plugins_issue/test_v2_plugins_issue-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test_v2_plugins_issue-Swift.h"
#endif

@implementation TestV2PluginsIssuePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestV2PluginsIssuePlugin registerWithRegistrar:registrar];
}
@end
